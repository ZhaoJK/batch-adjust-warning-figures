
# Main script.
# Calls the individual scripts that creates figures 1,2a,2b,2c,3a,3b.

# In order to reproduce the overview plot, version 3.20.8 of limma was needed.
# R version 3.1.1 was needed for installation of limma 3.20.8.
# The below two commands should download and install the nescesary packages if needed.
# source("http://bioconductor.org/biocLite.R")
# biocLite( c("sva", "limma", "lsmeans", "bladderbatch"))

# If R is not started with the appropriate folder as work directory:
# setwd("...path to batch-adjust-warning-figures folder...")

startwd = getwd()
setwd("scripts")
source("overviewplot.r")

source("samplesizescalingplot.r")

setwd(startwd)
setwd("reanalysis/Leek2012")
source("figurescript_leek.r")

setwd(startwd)
setwd("reanalysis/Towfic2014")
source("figurescript_towfic.r")

setwd(startwd)
setwd("reanalysis/Johnson2007")
source("figurescript_johnson.r")

setwd(startwd)
sink("sessionInfo.txt")
print(sessionInfo())
sink()





