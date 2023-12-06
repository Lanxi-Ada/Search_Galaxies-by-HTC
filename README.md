# Search Galaxies though High-throughput computing

Try to find a new gravitationally-lensed Lyman-break galaxy for UW astronomer Christy Tremonti. If we have a target spectrum of an astronomical object, a noisy version of the target, a shifted version of the target, and an unrelated spectrum. We want to find the second and third spectra from among many others. Our job is to find those spectra most like cB58 using Andrew Pontzen's movie of a simulated redshifted spectrum developing as light from a quasar passes through gas clouds and a galaxy.

This is a full-scale search using the HTC (via learn.chtc.wisc.edu) for an undiscovered, gravitationally lensed, high-redshift Lyman-break galaxy. This project requires running about 2500 jobs of a few minutes to an hour each.


## Code 
Contains code for High Throughput Computing.
There are about 2.5 million spectra stored in the directory /home/groups/STAT_DSCP/boss/tgz on the CHTC cluster. This directory contains 2459 .tgz files, each around 100 MB. Each.tgz file extracts to a directory containing about 1000 spectra. The template cB58 is stored in /home/groups/STAT_DSCP/boss/cB58_Lyman_break.fit. [cB58_Lyman_break.fit](Data/cB58_Lyman_break.fit)

## Result
[hw4.Rmd](Result/hw4.Rmd)  [hw4.html](Result/hw4.html) Reading the hw4best100.csv file and make ten graphs, showing cB58 aligned with each of your top ten spectra from your search in hw4.sub. Include a legend with each graph identifying cB58 and the other spectrum. Reorder your graphs so that the best match is at the top.

