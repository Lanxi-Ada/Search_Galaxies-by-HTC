## Lanxi Zhang
## lzhang699@wisc.edu

rm(list=ls())

args = (commandArgs(trailingOnly=TRUE))
if(length(args) == 2){
  process = args[1]
  outfile = args[2]
} else {
  cat('usage: Rscript hw4.R <process> <output tfile>\n', file=stderr())
  stop()
}
 
require("FITSio")
library("FITSio")

cB58 = readFrameFromFITS(process)
new_cB58 = (cB58$FLUX - mean(cB58$FLUX)) / sd(cB58$FLUX)

files = list.files(outfile)
list_of_data_frames <- list()

euclidean_distance <- function(vec1, vec2) {
  return(sqrt(sum((vec1 - vec2)^2)))
} 

length_files = length(files)
n = dim(cB58)[1]

for (i in 1:length_files) {
  path = paste(sep = "", outfile, "/", files[i])
  print(path)
  cat("File path:", path, "\n")
  noisy = readFrameFromFITS(path)
  Flux = noisy$flux

  DIS = Inf
  I = NA

  if (length(Flux) - n + 1 > 1) {
    for (j in 1:(length(Flux) - n + 1)) {
      new_spec = (Flux[j:(j + n - 1)] - mean(Flux[j:(j + n - 1)])) / sd(Flux[j:(j + n - 1)])
      d = euclidean_distance(new_cB58, new_spec)

      if (!is.na(d) && !is.nan(d) && d != Inf && d < DIS) {
        DIS = d
        I = j
      }
    }
  }

  result <- list(distance = DIS, best_shift = I)
  list_of_data_frames[[i]] <- result
}



distances <- sapply(list_of_data_frames, function(x) x$distance)

best_shift <- sapply(list_of_data_frames, function(x) x$best_shift)

df <- data.frame(distance = distances, spectrumID = files, i = best_shift)
df <- df[order(df$distance, decreasing = FALSE), ]

filename <- paste("hw4best_",outfile, ".csv", sep = "")
write.csv(df, file = filename)