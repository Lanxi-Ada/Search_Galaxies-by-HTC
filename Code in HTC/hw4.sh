#!/bin/bash
# Unpack R
tar -xzf R413.tar.gz
tar -xzf packages_FITSio.tar.gz

# Set the environment variables for R
export PATH=$PWD/R/bin:$PATH
export RHOME=$PWD/R
export R_LIBS=$PWD/packages

# Unpack the current .tgz file

tar -xzf $2.tgz

Rscript hw4.R $1 $2
