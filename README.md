# Search Galaxies though HTC
This is a full-scale search using the HTC (via learn.chtc.wisc.edu) for an undiscovered, gravitationally lensed, high-redshift Lyman-break galaxy. This project requires running about 2500 jobs of a few minutes to an hour each. 

## Code 
Contains code for High Throughput Computing.
There are about 2.5 million spectra stored in the directory /home/groups/STAT_DSCP/boss/tgz on the CHTC cluster. This directory contains 2459 .tgz files, each around 100 MB. Each.tgz file extracts to a directory containing about 1000 spectra. The template cB58 is stored in /home/groups/STAT_DSCP/boss/cB58_Lyman_break.fit. [cB58_Lyman_break.fit](Data/cB58_Lyman_break.fit)

## Result
[hw4.Rmd](Result/hw4.Rmd)  [hw4.html](Result/hw4.html) Reading the hw4best100.csv file and make ten graphs, showing cB58 aligned with each of your top ten spectra from your search in hw4.sub. Include a legend with each graph identifying cB58 and the other spectrum. Reorder your graphs so that the best match is at the top.

