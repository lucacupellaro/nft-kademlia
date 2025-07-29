###############################################################################################################################################
############################################################## References #####################################################################
###############################################################################################################################################
#
# Peter J. Brockwell and Richard A. Davis - Introduction to Time Series and Forecasting (Third Edition)
# Springer Texts in Statistics - Springer Verlag
#
# Robert H. Shumway, David S. Stoffer - Time Series Analysis and Its Applications (with R Examples), 4th Edition
# Springer Texts in Statistics - Springer Verlag
# https://www.stat.pitt.edu/stoffer/tsa4/tsa4.pdf
#
# Guidolin M., Pedio M. - Essentials of Time Series Analysis for Financial Applications, 1st Edition
# Elsevier Science Publishing Co Inc - Academic Press (May 2018)
#
# Rob J Hyndman and George Athanasopoulos - Forecasting: Principles and Practice
# Monash Univerisity, Australia
# https://otexts.com/fpp2/ - https://otexts.com/fpp3/
#
# Stephane Guerrier, Roberto Molinari, Haotian Xu and Yuming Zhang - Applied Time Series Analysis with R
# https://smac-group.github.io/ts/index.html
#
# R - Residual Diagnostic
# https://cran.r-project.org/web/packages/olsrr/vignettes/residual_diagnostics.html
#
###############################################################################################################################################
################################################################# Used Libraries ##############################################################
###############################################################################################################################################
# installed.packages()
# Reading libraries
# https://www.r-project.org/other-docs.html
library(base)
# https://rdrr.io/r/#base
# https://www.math.ucla.edu/~anderson/rw1001/library/base/html/00Index.html
#
library(utils)
#
library(stats)
# https://stat.ethz.ch/R-manual/R-devel/library/stats/html/00Index.html
#
# library(yahoofinancer)
if (!require("yahoofinancer", quietly = TRUE)) install.packages("yahoofinancer")
# https://www.r-bloggers.com/2022/11/introducing-yahoofinancer/
#
# library(dplyr)
if (!require("dplyr", quietly = TRUE)) install.packages("dplyr")
#
# library(tibble)
if (!require("tibble", quietly = TRUE)) install.packages("tibble")
#
# library(xts)
if (!require("xts", quietly = TRUE)) install.packages("readr")
#
# library("zoo")
if (!require("zoo", quietly = TRUE)) install.packages("zoo")
# 
# library(quantmod)
if (!require("quantmod", quietly = TRUE)) install.packages("quantmod")
# https://cran.r-project.org/web/packages/quantmod/quantmod.pdf
#
# library(numbers)
if (!require("numbers", quietly = TRUE)) install.packages("numbers")
#
# library(scales)
if (!require("scales", quietly = TRUE)) install.packages("scales") 
#
# library(ggplot2)
if (!require("ggplot2", quietly = TRUE)) install.packages("ggplot2")
#
###############################################################################################################################################

# library("data.table")
if (!require("data.table", quietly = TRUE)) install.packages("data.table")
#
###############################################################################################################################################
########################################################### Potentially Useful Libraries ######################################################
###############################################################################################################################################
# library(reshape2)
if (!require("reshape2", quietly = TRUE)) install.packages("reshape2") 
#
# library(purrr)
if (!require("purrr", quietly = TRUE)) install.packages("purrr")
#
# library(readr)
if (!require("readr", quietly = TRUE)) install.packages("readr")
# library(jsonlite)
if (!require("jsonlite", quietly = TRUE)) install.packages("jsonlite")
#
# library(stats4)
if (!require("stats4", quietly = TRUE)) install.packages("stats4")
#
# library(withr)
if (!require("withr", quietly = TRUE)) install.packages("withr")
#
# library(readxl) 
if (!require("readxl", quietly = TRUE)) install.packages("withr")
#
# library(xlsx)
#
# library("writexl") 
if (!require("writexl", quietly = TRUE)) install.packages("writexl")
#
# library(forecast)
if (!require("forecast", quietly = TRUE)) install.packages("forecast")
#
# library(tsibble)
if (!require("tsibble", quietly = TRUE)) install.packages("tsibble")
#
# library(fabletools)
if (!require("fabletools", quietly = TRUE)) install.packages("fabletools")
#
# library(fable)
if (!require("fable", quietly = TRUE)) install.packages("fable")
#
# library(feasts)
if (!require("feasts", quietly = TRUE)) install.packages("feasts")
#
# library(DescTools)
if (!require("DescTools", quietly = TRUE)) install.packages("DescTools")
#
# library(graphics)
if (!require("graphics", quietly = TRUE)) install.packages("graphics")
#
# library(timeDate)
if (!require("timeDate", quietly = TRUE)) install.packages("timeDate")
#
# library(timeSeries)
if (!require("timeSeries", quietly = TRUE)) install.packages("timeSeries")
#
# library(fBasics)
if (!require("fBasics", quietly = TRUE)) install.packages("fBasics")
#
# library(fOptions)
if (!require("fOptions", quietly = TRUE)) install.packages("fOptions")
#
# library(tidyverse)
if (!require("tidyverse", quietly = TRUE)) install.packages("tidyverse")
#
# library(lmtest)
if (!require("lmtest", quietly = TRUE)) install.packages("lmtest")
#
# library(crayon)
if (!require("crayon", quietly = TRUE)) install.packages("crayon")
#
# library(survival)
if (!require("survival", quietly = TRUE)) install.packages("survival") 
#
# library(MASS)
if (!require("MASS", quietly = TRUE)) install.packages("MASS") 
#
# library(fitdistrplus)
# https://cran.r-project.org/web/packages/fitdistrplus/fitdistrplus.pdf
# https://cran.r-project.org/web/packages/fitdistrplus/vignettes/paper2JSS.pdf
if (!require("fitdistrplus", quietly = TRUE)) install.packages("fitdistrplus") 
#
# library(lattice)
if (!require("lattice", quietly = TRUE)) install.packages("lattice") 
#
# library(extraDistr)
if (!require("extraDistr", quietly = TRUE)) install.packages("extraDistr") 
#
# library(gamlss.dist)
if (!require("gamlss.dist", quietly = TRUE)) install.packages("gamlss.dist") 
#
# library(glogis)
if (!require("glogis", quietly = TRUE)) install.packages("glogis")
#
# library(nleqslv)
# https://cran.r-project.org/web/packages/nleqslv/nleqslv.pdf
if (!require("nleqslv", quietly = TRUE)) install.packages("nleqslv") 
#
# library(NlcOptim)
if (!require("NlcOptim", quietly = TRUE)) install.packages("NlcOptim") 
#
# library(pracma)
if (!require("pracma", quietly = TRUE)) install.packages("pracma") 
#
# library(tidyverse)
if (!require("tidyverse", quietly = TRUE)) install.packages("tidyverse") 
#
# library(grid)
if (!require("grid", quietly = TRUE)) install.packages("grid")
#
# library(gridExtra)
if (!require("gridExtra", quietly = TRUE)) install.packages("gridExtra") 
#
# library(gridSVG)
if (!require("gridSVG", quietly = TRUE)) install.packages("gridSVG")
#
# library(urca)
if (!require("urca", quietly = TRUE)) install.packages("urca") 
#
# library(moments)
if (!require("moments", quietly = TRUE)) install.packages("moments") 
#
# library(lmtest)
# https://cran.r-project.org/web/packages/lmtest/lmtest.pdf
# https://cran.r-project.org/web/packages/lmtest/vignettes/lmtest-intro.pdf
if (!require("lmtest", quietly = TRUE)) install.packages("lmtest") 
#
# library(TTR)
if (!require("TTR", quietly = TRUE)) install.packages("TTR") 
#
# library(lubridate)
if (!require("lubridate", quietly = TRUE)) install.packages("lubridate") 
#
# library(strucchange)
if (!require("strucchange", quietly = TRUE)) install.packages("strucchange")
#
# library(broom)
if (!require("broom", quietly = TRUE)) install.packages("broom")
#
# library(rlang)
if (!require("rlang", quietly = TRUE)) install.packages("rlang")
#
# library(olsrr)
# https://cran.r-project.org/web/packages/olsrr/olsrr.pdf
# https://cran.r-project.org/web/packages/olsrr/vignettes/intro.html
# https://cran.r-project.org/web/packages/olsrr/vignettes/heteroskedasticity.html
if (!require("olsrr", quietly = TRUE)) install.packages("olsrr")
#
# library(skedastic)
# https://cran.r-project.org/web/packages/skedastic/skedastic.pdf
# https://www.rdocumentation.org/packages/skedastic/versions/2.0.1
if (!require("skedastic", quietly = TRUE)) install.packages("skedastic")
#
# library(whitestrap)
# https://cran.r-project.org/web/packages/whitestrap/whitestrap.pdf
# https://cran.r-project.org/web/packages/whitestrap/readme/README.html
if (!require("whitestrap", quietly = TRUE)) install.packages("whitestrap")
#
# library(timechange)
if (!require("timechange", quietly = TRUE)) install.packages("timechange")
#
# library(leaps)
if (!require("leaps", quietly = TRUE)) install.packages("leaps")
#
# library(ltsa)
if (!require("ltsa", quietly = TRUE)) install.packages("ltsa")
#
# library(bestglm)
if (!require("bestglm", quietly = TRUE)) install.packages("bestglm")
#
# library(lemon)
if (!require("lemon", quietly = TRUE)) install.packages("lemon")
#
# library(nortest)
if (!require("nortest", quietly = TRUE)) install.packages("nortest")
#
# library(tseries)
if (!require("tseries", quietly = TRUE)) install.packages("tseries")
#
# library(EnvStats)
if (!require("EnvStats", quietly = TRUE)) install.packages("EnvStats")
#
# library(car)
if (!require("car", quietly = TRUE)) install.packages("car")
#
# library(rlist)
if (!require("rlist", quietly = TRUE)) install.packages("rlist")
#
# library(goftest)
if (!require("goftest", quietly = TRUE)) install.packages("goftest")
#
# library(qqplotr)
if (!require("qqplotr", quietly = TRUE)) install.packages("qqplotr")
#
# library(BiocManager)
if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")
#
# library(BiocGenerics)
if (!require("BiocGenerics", quietly = TRUE)) BiocManager::install("BiocGenerics")
#
# library(Biobase)
if (!require("Biobase", quietly = TRUE)) BiocManager::install("Biobase")
#
# library(S4Vectors)
if (!require("S4Vectors", quietly = TRUE)) BiocManager::install("S4Vectors")
#
# library(IRanges)
if (!require("IRanges", quietly = TRUE)) BiocManager::install("IRanges")
#
# library(AnnotationDbi)
if (!require("AnnotationDbi", quietly = TRUE)) BiocManager::install("AnnotationDbi")
#
# library(GO.db)
if (!require("GO.db", quietly = TRUE)) BiocManager::install("GO.db")
#
# library(dynamicTreeCut)
if (!require("dynamicTreeCut", quietly = TRUE)) BiocManager::install("dynamicTreeCut")
#
# library(fastcluster)
if (!require("fastcluster", quietly = TRUE)) BiocManager::install("fastcluster")
#
# library(fastcluster)
if (!require("WGCNA", quietly = TRUE)) BiocManager::install("WGCNA")
#
# library(KFAS)
if (!require("KFAS", quietly = TRUE)) install.packages("KFAS")
#
# library(MARSS)
# RShowDoc("Chapter_inits.R",package="MARSS")
if (!require("MARSS", quietly = TRUE)) install.packages("MARSS")
#
# library(gtable)
if (!require("gtable", quietly = TRUE)) install.packages("gtable")
#
# library(sandwich)
if (!require("sandwich", quietly = TRUE)) install.packages("sandwich")
#
# library(fGarch)
if (!require("fGarch", quietly = TRUE)) install.packages("fGarch")
###############################################################################################################################################
# library(parallel)
if (!require("parallel", quietly = TRUE)) install.packages("parallel")
#
# library(iterators)
if (!require("iterators", quietly = TRUE)) install.packages("iterators")
#
# library(foreach)
if (!require("foreach", quietly = TRUE)) install.packages("foreach")
#
# library(doParallel)
if (!require("doParallel", quietly = TRUE)) install.packages("doParallel")
###############################################################################################################################################
# library(remotes)
if (!require("remotes", quietly = TRUE)) install.packages("remotes")
#
# library(FitAR)
if (!require("FitAR", quietly = TRUE)) remotes::install_github("cran/FitAR")
#
###############################################################################################################################################
###############################################################################################################################################
###############################################################################################################################################
###############################################################################################################################################
###############################################################################################################################################
###############################################################################################################################################
###############################################################################################################################################
###############################################################################################################################################
########################################################## Environmental Setting ##############################################################
###############################################################################################################################################
# Removing all items in Global Environment
rm(list=ls())
#
# Closing all video devices.
graphics.off()
#
# Clearing all Plots
# try(dev.off(dev.list()["RStudioGD"]), silent=TRUE)
try(dev.off(),silent=TRUE)
#
# Storing options' default values.
def_options <- options()
# Resetting options to default values.
options(def_options)
#
# Changing digits option
# show(def_options$digits)
# or
# getOption("digits")
# # 7
# options(digits=22)
# getOption("digits")
# 22
# Restoring digits option to default value
# options(digits=7)
# or
# options(digits=def_options$digits)
# getOption("digits")
# 7
#
# Showing data frames with a large number of rows.
# show(def_options$max.print)
# or 
# getOption("max.print")
# 1000
# options(max.print=10000)
# getOption("max.print")
#
# Restoring max.print option to default value
# options(max.print=1000)
# or
# options(max.print=def_options$max.print)
# getOption("max.print")
# 1000
#
# Setting the current directory as the work directory. 
WD <- dirname(rstudioapi::getSourceEditorContext()$path)
show(WD)
setwd(WD)
dir()
#
# Loading the system directory
Sys.getenv('PATH')
#
# Adding the data directory to the system directory
# library(withr)
# WITHR <- with_path("C:/Users/rober/Documents/My Documents - Notebook (local)/My Classes/MPSMF/R - Scripts & Data/Data", Sys.getenv('PATH'), action="suffix")
# show(WITHR)
#
# Clearing the console.
cat("\014")
#
# Clearing the Console
# cls <- function() cat(rep("\n",100))
# cls()
#
###############################################################################################################################################
###############################################################################################################################################
###############################################################################################################################################
###############################################################################################################################################
################################################################# Functions ###################################################################
###############################################################################################################################################
#
na.rm <- function(x){x <- as.vector(x[!is.na(as.vector(x))])}
#
###############################################################################################################################################
###############################################################################################################################################
library(yahoofinancer)
DJI <- Index$new('^DJI')
# DJI$set_index('^DJI')
DJI_2023_04_13_2025_04_12 <- DJI$get_history(period = NULL, interval = "1d", start = "2023-04-10", end = "2025-04-10")
class(DJI_2023_04_13_2025_04_12)
# [1] "data.frame"
head(DJI_2023_04_13_2025_04_12, 10)
#                   date    volume     high      low     open    close adj_close
# 1  2023-04-10 13:30:00 232920000 33590.24 33343.43 33425.25 33586.52  33586.52
# 2  2023-04-11 13:30:00 241430000 33781.29 33586.75 33586.75 33684.79  33684.79
# 3  2023-04-12 13:30:00 260300000 33895.43 33593.32 33764.21 33646.50   33646.5
# 4  2023-04-13 13:30:00 277230000 34054.99 33605.17 33668.97 34029.69  34029.69
# 5  2023-04-14 13:30:00 276720000 34082.94 33730.85 33981.71 33886.47  33886.47
# 6  2023-04-17 13:30:00 234530000 33991.23 33796.91 33930.46 33987.18  33987.18
# 7  2023-04-18 13:30:00 253570000 34018.62 33791.89 33965.16 33976.63  33976.63
# 8  2023-04-19 13:30:00 251490000 33957.98 33814.65 33889.83 33897.01  33897.01
# 9  2023-04-20 13:30:00 307910000 33875.39 33677.74 33740.60 33786.62  33786.62
# 10 2023-04-21 13:30:00 291080000 33858.83 33688.57 33793.60 33808.96  33808.96
tail(DJI_2023_04_13_2025_04_12, 10)
#                    date     volume     high      low     open    close adj_close
# 494 2025-03-27 13:30:00  484540000 42523.84 42142.19 42432.96 42299.70   42299.7
# 495 2025-03-28 13:30:00  532360000 42258.15 41530.00 42245.82 41583.90   41583.9
# 496 2025-03-31 13:30:00  732220000 42147.38 41148.13 41382.52 42001.76  42001.76
# 497 2025-04-01 13:30:00  514610000 42140.66 41519.90 41879.75 41989.96  41989.96
# 498 2025-04-02 13:30:00  492050000 42382.27 41629.70 41736.08 42225.32  42225.32
# 499 2025-04-03 13:30:00  941940000 41173.62 40513.11 40986.52 40545.93  40545.93
# 500 2025-04-04 13:30:00 1290100000 40097.90 38264.87 40097.90 38314.86  38314.86
# 501 2025-04-07 13:30:00 1363960000 39207.02 36611.78 37879.65 37965.60   37965.6
# 502 2025-04-08 13:30:00 1051220000 39426.60 37103.86 38827.10 37645.59  37645.59
# 503 2025-04-09 13:30:00 1412960000 40778.70 37275.69 37387.91 40608.45  40608.45
#
############################################################ Data Pre-treatment ###############################################################
base::difftime(as.Date("2025-04-12"), as.Date("2023-04-13"), units="days")
# Time difference of 730 days
library(yahoofinancer)
SPX <- Index$new('^SPX')
SPX_2023_04_13_2025_04_12_df <- SPX$get_history(period = NULL, interval = "1d", start = "2023-04-13", end = "2025-04-12")
class(SPX_2023_04_13_2025_04_12_df)
# [1] "data.frame"
head(SPX_2023_04_13_2025_04_12_df, 10)
#                   date     volume    high     low    open   close adj_close
# 1  2023-04-13 13:30:00 3596590000 4150.26 4099.40 4100.04 4146.22   4146.22
# 2  2023-04-14 13:30:00 3575690000 4163.19 4113.20 4140.11 4137.64   4137.64
# 3  2023-04-17 13:30:00 3611180000 4151.72 4123.18 4137.17 4151.32   4151.32
# 4  2023-04-18 13:30:00 3536640000 4169.48 4140.36 4164.26 4154.87   4154.87
# 5  2023-04-19 13:30:00 3572560000 4162.57 4134.49 4139.33 4154.52   4154.52
# 6  2023-04-20 13:30:00 3772080000 4148.57 4114.57 4130.48 4129.79   4129.79
# 7  2023-04-21 13:30:00 3611750000 4138.02 4113.86 4132.14 4133.52   4133.52
# 8  2023-04-24 13:30:00 3290940000 4142.41 4117.77 4132.07 4137.04   4137.04
# 9  2023-04-25 13:30:00 3978640000 4126.43 4071.38 4126.43 4071.63   4071.63
# 10 2023-04-26 13:30:00 3837030000 4089.67 4049.35 4087.78 4055.99   4055.99
#
tail(SPX_2023_04_13_2025_04_12_df, 10)
#                    date     volume    high     low    open   close adj_close
# 493 2025-03-31 13:30:00 5257250000 5627.56 5488.73 5527.91 5611.85   5611.85
# 494 2025-04-01 13:30:00 4434500000 5650.57 5558.52 5597.53 5633.07   5633.07
# 495 2025-04-02 13:30:00 4243830000 5695.31 5571.48 5580.76 5670.97   5670.97
# 496 2025-04-03 13:30:00 7210470000 5499.53 5390.83 5492.74 5396.52   5396.52
# 497 2025-04-04 13:30:00 8853500000 5292.14 5069.90 5292.14 5074.08   5074.08
# 498 2025-04-07 13:30:00 8691980000 5246.57 4835.04 4953.79 5062.25   5062.25
# 499 2025-04-08 13:30:00 7408140000 5267.47 4910.42 5193.57 4982.77   4982.77
# 500 2025-04-09 13:30:00 9489600000 5481.34 4948.43 4965.28 5456.90    5456.9
# 501 2025-04-10 13:30:00 6677140000 5353.15 5115.27 5353.15 5268.05   5268.05
# 502 2025-04-11 13:30:00 5602550000 5381.46 5220.77 5255.56 5363.36   5363.36
#
utils::str(SPX_2023_04_13_2025_04_12_df)
# 'data.frame':	502 obs. of  7 variables:
# $ date     : POSIXct, format: "2023-04-13 13:30:00" "2023-04-14 13:30:00" "2023-04-17 13:30:00" "2023-04-18 13:30:00" ...
# $ volume   : num  3.60e+09 3.58e+09 3.61e+09 3.54e+09 3.57e+09 ...
# $ high     : num  4150 4163 4152 4169 4163 ...
# $ low      : num  4099 4113 4123 4140 4134 ...
# $ open     : num  4100 4140 4137 4164 4139 ...
# $ close    : num  4146 4138 4151 4155 4155 ...
# $ adj_close:List of 502
# ..$ : num 4146
# ..$ : num 4138
# ..............
# ..$ : num 4508
# ..$ : num 4516
# .. [list output truncated]
#
# We unlist the column adj_close
SPX_2023_04_13_2025_04_12_df$adj_close <- base::unlist(SPX_2023_04_13_2025_04_12_df$adj_close)
# We remove the time from the data column
SPX_2023_04_13_2025_04_12_df$date <- as.Date(SPX_2023_04_13_2025_04_12_df$date, format="%Y%m%d")
class(SPX_2023_04_13_2025_04_12_df$date)
# [1] "Date"
# We relocate the volume column to the end of the data frame
SPX_2023_04_13_2025_04_12_df <- dplyr::relocate(SPX_2023_04_13_2025_04_12_df, volume, .after = last_col())
head(SPX_2023_04_13_2025_04_12_df, 3)
# To estimate the historical volatility of the rates of return and logarithmic returns of the S&P 500 adjusted daily closing prices, we will 
# first insert these values into the data frame. Additionally, we will include the Adjusted Daily closing price returns, the percentages of the
# adjusted closing price rates of return, and the percentages of the logarithmic returns. To simplify our notations, we will introduce an 
# auxiliary data frame. We will also check for any NA entries in the S&P 500 adjusted daily closing prices.
Data_df <- SPX_2023_04_13_2025_04_12_df
sum(is.na(Data_df$adj_close))
# [1] 0
adj_close_ret = c(NA, diff(Data_df$adj_close, lag=1, difference=1))
head(adj_close_ret, 10)
# [1] NA  -8.5800781  13.6796875   3.5502930  -0.3500977 -24.7299805   3.7299805   3.5200195 -65.4101562 -15.6398926
# The object adj_close_ret could be obtainened with the following direct calculation.
adj_close_ret_alt <- c(NA, Data_df$adj_close[-1]-Data_df$adj_close[-nrow(Data_df)])
head(adj_close_ret_alt, 10)
# [1] NA  -8.5800781  13.6796875   3.5502930  -0.3500977 -24.7299805   3.7299805   3.5200195 -65.4101562 -15.6398926
# To check that the objects adj_close_ret and adj_close_ret_alt are identical.
identical(adj_close_ret, adj_close_ret_alt)
# [1] TRUE
# To check that the objects adj_close_ret and adj_close_ret_alt have identical entries.
adj_close_ret==adj_close_ret_alt
# [1]   NA TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE 
# .....
# [477] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
#
adj_close_ret_rate=c(NA, adj_close_ret[-1]/Data_df$adj_close[-nrow(Data_df)])
head(adj_close_ret_rate)
# [1] NA -0.0020693735  0.0033061569  0.0008552203 -0.0000842620 -0.0059525482
adj_close_ret_rate_perc=100*adj_close_ret_rate
head(adj_close_ret_rate_perc)
# [1] NA -0.20693735  0.33061569  0.08552203 -0.00842620 -0.59525482
adj_close_log=log(Data_df$adj_close)
head(adj_close_log, 10)
# [1] 8.329952 8.327881 8.331182 8.332036 8.331952 8.325982 8.326885 8.327736 8.311799 8.307950
adj_close_log_ret=c(NA, diff(adj_close_log, lag=1, difference=1))
head(adj_close_log_ret, 10)
# [1] NA -2.071518e-03  3.300704e-03  8.548548e-04 -8.426555e-05 -5.970335e-03  9.027813e-04  8.512168e-04 -1.593718e-02 -3.848584e-03
adj_close_log_ret_alt <- c(NA, Data_df$adj_close_log[-1]-Data_df$adj_close_log[-nrow(Data_df)])
head(adj_close_log_ret_alt, 10)
# [1] NA -2.071518e-03  3.300704e-03  8.548548e-04 -8.426555e-05 -5.970335e-03  9.027813e-04  8.512168e-04 -1.593718e-02 -3.848584e-03
identical(adj_close_log_ret, adj_close_log_ret_alt)
# [1] TRUE
adj_close_log_ret_perc=100*adj_close_log_ret
head(adj_close_log_ret_perc, 10)
# [1] NA -0.207151758  0.330070358  0.085485480 -0.008426555 -0.597033519  0.090278126  0.085121678 -1.593718382 -0.384858350
#
SPX_2023_04_13_2025_04_12_df <- tibble::add_column(SPX_2023_04_13_2025_04_12_df, adj_close_ret=adj_close_ret, 
                                                   adj_close_ret_rate=adj_close_ret_rate, 
                                                   adj_close_ret_rate_perc=adj_close_ret_rate_perc, .after="adj_close")
SPX_2023_04_13_2025_04_12_df <- tibble::add_column(SPX_2023_04_13_2025_04_12_df, adj_close_log=adj_close_log, 
                                                   adj_close_log_ret=adj_close_log_ret, 
                                                   adj_close_log_ret_perc=adj_close_log_ret_perc, .after="adj_close_ret_rate_perc")
head(SPX_2023_04_13_2025_04_12_df, 3)
#         date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log adj_close_log_ret
# 1 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA      8.329952                NA
# 2 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373      8.327881      -0.002071518
# 3 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157      8.331182       0.003300704
# adj_close_log_ret_perc     volume
# 1                     NA 3596590000
# 2             -0.2071518 3575690000
# 3              0.3300704 3611180000
tail(SPX_2023_04_13_2025_04_12_df, 3)
#           date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log adj_close_log_ret
# 500 2025-04-09 5481.34 4948.43 4965.28 5456.90   5456.90     474.12988         0.09515388                9.515388      8.604636        0.09089488
# 501 2025-04-10 5353.15 5115.27 5353.15 5268.05   5268.05    -188.85010        -0.03460758               -3.460758      8.569416       -0.03522061
# 502 2025-04-11 5381.46 5220.77 5255.56 5363.36   5363.36      95.31006         0.01809210                1.809210      8.587346        0.01793038
#     adj_close_log_ret_perc     volume
# 500               9.089488 9489600000
# 501              -3.522061 6677140000
# 502               1.793038 5602550000
utils::str(SPX_2023_04_13_2025_04_12_df)
# 'data.frame':	502 obs. of  13 variables:
# $ date                   : Date, format: "2023-04-13" "2023-04-14" "2023-04-17" "2023-04-18" ...
# $ high                   : num  4150 4163 4152 4169 4163 ...
# $ low                    : num  4099 4113 4123 4140 4134 ...
# $ open                   : num  4100 4140 4137 4164 4139 ...
# $ close                  : num  4146 4138 4151 4155 4155 ...
# $ adj_close              : num  4146 4138 4151 4155 4155 ...
# $ adj_close_ret          : num  NA -8.58 13.68 3.55 -0.35 ...
# $ adj_close_ret_rate     : num  NA -2.07e-03 3.31e-03 8.55e-04 -8.43e-05 ...
# $ adj_close_ret_rate_perc: num  NA -0.20694 0.33062 0.08552 -0.00843 ...
# $ adj_close_log          : num  8.33 8.33 8.33 8.33 8.33 ...
# $ adj_close_log_ret      : num  NA -2.07e-03 3.30e-03 8.55e-04 -8.43e-05 ...
# $ adj_close_log_ret_perc : num  NA -0.20715 0.33007 0.08549 -0.00843 ...
# $ volume                 : num  3.60e+09 3.58e+09 3.61e+09 3.54e+09 3.57e+09 ...
# #
# Operations for saving in R.Data format, removing, removal controlling, and loading the SPX_2023_04_13_2025_04_12_df data frame.
# save(SPX_2023_04_13_2025_04_12_df, file="SPX_2023_04_13_2025_04_12_df.RData")
# rm(SPX_2023_04_13_2025_04_12_df)
# head(SPX_2023_04_13_2025_04_12_df)
# # Error: object 'SPX_2023_04_13_2025_04_12_df' not found
#
# load("SPX_2023_04_13_2025_04_12_df.RData")
# head(SPX_2023_04_13_2025_04_12_df, 3)
#         date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log adj_close_log_ret
# 1 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA      8.329952                NA
# 2 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373      8.327881      -0.002071518
# 3 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157      8.331182       0.003300704
#   adj_close_log_ret_perc     volume
# 1                     NA 3596590000
# 2             -0.2071518 3575690000
# 3              0.3300704 3611180000
#
# We convert the SPX_2023_04_13_2025_04_12_df data.frame class object into an xts class object to draw a candlestick plot. Specifying that the 
# date column should be used as the index for the xts object.
Data_df <- SPX_2023_04_13_2025_04_12_df
Data_xts <- xts::xts(Data_df[, -1], order.by = Data_df$date)
class(Data_xts)
# [1] "xts" "zoo"
head(Data_xts, 3)
#               high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log adj_close_log_ret
# 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA      8.329952                NA
# 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373      8.327881      -0.002071518
# 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157      8.331182       0.003300704
#            adj_close_log_ret_perc     volume
# 2023-04-13                     NA 3596590000
# 2023-04-14             -0.2071518 3575690000
# 2023-04-17              0.3300704 3611180000
#
# It is also possible to convert the SPX_2023_04_13_2025_04_12_df data.frame class object into a zoo class object. Below, we show how. However,
# we will continue working with the xts class objects.
Data_zoo <- zoo::read.zoo(Data_df, index.column=1)
class(Data_zoo)
# [1] "zoo"
head(Data_zoo, 3)
#               high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log adj_close_log_ret
# 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA      8.329952                NA
# 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373      8.327881      -0.002071518
# 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157      8.331182       0.003300704
#            adj_close_log_ret_perc     volume
# 2023-04-13                     NA 3596590000
# 2023-04-14             -0.2071518 3575690000
# 2023-04-17              0.3300704 3611180000
#
# We draw the candlestick plot of the S&P 500 adjusted daily closing prices
quantmod::chartSeries(Data_xts, type="candlesticks", show.grid = TRUE, TA = 'addVo()', theme=chartTheme('white'),
                      name="S&P 500 adjusted daily closing prices")
#
quantmod::chartSeries(Data_xts, type="bars", show.grid = TRUE, TA = 'addVo()', theme=chartTheme('white'),
                      name="S&P 500 Adjusted Daily Closing Prices")
#
quantmod::chartSeries(Data_xts, type="candlesticks", subset="2024-04-10::2025-04-09", theme=chartTheme('white'),
                      name="S&P 500 Adjusted Daily Closing Prices")
#
quantmod::chartSeries(Data_xts, type="bars", subset="2024-04-12::2025-04-11", theme=chartTheme('white'),
                      name="S&P 500 Adjusted Daily Closing Prices")
#
Data_adj_close_log_df <- data.frame(date=Data_df$date, high=log(Data_df$high), low=log(Data_df$low), 
                                    open=log(Data_df$open), close=log(Data_df$close), adj_close=Data_df$adj_close_log, volume=Data_df$volume)
head(Data_adj_close_log_df, 3)
#         date     high      low     open    close adj_close     volume
# 1 2023-04-13 8.330926 8.318596 8.318752 8.329952  8.329952 3596590000
# 2 2023-04-14 8.334037 8.321957 8.328478 8.327881  8.327881 3575690000
# 3 2023-04-17 8.331278 8.324380 8.327767 8.331182  8.331182 3611180000
#
Data_adj_close_log_xts <- xts::xts(Data_adj_close_log_df[, -1], order.by = Data_adj_close_log_df$date)
class(Data_adj_close_log_xts)
# [1] "xts" "zoo"
head(Data_adj_close_log_xts, 3)
#                high      low     open    close adj_close     volume
# 2023-04-13 8.330926 8.318596 8.318752 8.329952  8.329952 3596590000
# 2023-04-14 8.334037 8.321957 8.328478 8.327881  8.327881 3575690000
# 2023-04-17 8.331278 8.324380 8.327767 8.331182  8.331182 3611180000
#
quantmod::chartSeries(Data_adj_close_log_xts, type="candlesticks", show.grid = TRUE, TA = 'addVo()', theme=chartTheme('white'),
                      name="S&P 500 Adjusted Daily Closing Price Logarithms")
#
quantmod::chartSeries(Data_adj_close_log_xts, type="bars", show.grid = TRUE, TA = 'addVo()', theme=chartTheme('white'),
                      name="S&P 500 Adjusted Daily Closing Price Logarithms")
#
quantmod::chartSeries(Data_adj_close_log_xts, type="candlesticks", subset="2024-04-10::2025-04-09", theme=chartTheme('white'),
                      name="S&P 500 Adjusted Daily Closing Price Logarithms")
#
quantmod::chartSeries(Data_adj_close_log_xts, type="bars", subset="2024-04-12::2025-04-11", theme=chartTheme('white'),
                      name="S&P 500 Adjusted Daily Closing Price Logarithms")
###############################################################################################################################################
# The plot displayed is a (Japanese) candlestick chart.  
# Each candlestick represents the price movement of an asset over a specific time unit, typically one day.
# Similar to a box plot, each candlestick consists of a body and two “whiskers,” which are referred to as shadows or wicks in this context.
# The lowest [resp. highest] point of the bottom [resp. top] shadow represents the lowest [resp. highest] value of the asset price 
# during the trading period.
# The color of the candlestick body is either white or green [resp. black or red] if the opening price is lower [resp. higher] than the closing 
# price.
# The lowest [resp. highest] point of the body represents the opening or closing [resp. closing or opening] asset price according to whether
# the opening price is lower or higher than the closing price, that is, the candlestick is white or green [resp. black or red].
# The length of the body and shadows are proportional to the asset price changes, according to a specific unit (of money).
# Each bar located at the bottom of the plot represents the asset trading volume over the specific unit of time. This is the number of shares 
# of the asset traded in the unit of time. The higher the volume bar, the more actively the stock is traded. The color of the volume bar 
# matches that of the corresponding candlestick, that is, it is white or green [resp. black or red] according to whether the color of the 
# overhead candle is white or green [resp. black or red].
###############################################################################################################################################
# We draw a scatter and a line plot of the S&P 500 adjusted daily closing price from Apr-10-2023 to Apr-09-2025. To this, we add an index column
# to the SPX_2023_04_13_2025_04_12_df data frame
SPX_2023_04_13_2025_04_12_df <- tibble::add_column(SPX_2023_04_13_2025_04_12_df, index=1:nrow(SPX_2023_04_13_2025_04_12_df), .before="date")
head(SPX_2023_04_13_2025_04_12_df, 3)
#   index       date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log
# 1     1 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA      8.329952
# 2     2 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373      8.327881
# 3     3 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157      8.331182
#   adj_close_log_ret adj_close_log_ret_perc     volume
# 1                NA                     NA 3596590000
# 2      -0.002071518             -0.2071518 3575690000
# 3       0.003300704              0.3300704 3611180000
tail(SPX_2023_04_13_2025_04_12_df, 3)
#     index       date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log
# 500   500 2025-04-09 5481.34 4948.43 4965.28 5456.90   5456.90     474.12988         0.09515388                9.515388      8.604636
# 501   501 2025-04-10 5353.15 5115.27 5353.15 5268.05   5268.05    -188.85010        -0.03460758               -3.460758      8.569416
# 502   502 2025-04-11 5381.46 5220.77 5255.56 5363.36   5363.36      95.31006         0.01809210                1.809210      8.587346
#     adj_close_log_ret adj_close_log_ret_perc     volume
# 500        0.09089488               9.089488 9489600000
# 501       -0.03522061              -3.522061 6677140000
# 502        0.01793038               1.793038 5602550000
#
# To use some already available code chunk, we consider again an auxiliary data frame and rename some columns of the latter.
Data_df <- SPX_2023_04_13_2025_04_12_df
head(Data_df, 3)
#   index       date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log
# 1     1 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA      8.329952
# 2     2 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373      8.327881
# 3     3 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157      8.331182
#   adj_close_log_ret adj_close_log_ret_perc     volume
# 1                NA                     NA 3596590000
# 2      -0.002071518             -0.2071518 3575690000
# 3       0.003300704              0.3300704 3611180000
#
Data_df <- dplyr::rename(Data_df, x=index, y=adj_close)
head(Data_df, 3)
#   x       date    high     low    open   close       y adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log adj_close_log_ret
# 1 1 2023-04-13 4150.26 4099.40 4100.04 4146.22 4146.22            NA                 NA                      NA      8.329952                NA
# 2 2 2023-04-14 4163.19 4113.20 4140.11 4137.64 4137.64     -8.580078       -0.002069373              -0.2069373      8.327881      -0.002071518
# 3 3 2023-04-17 4151.72 4123.18 4137.17 4151.32 4151.32     13.679688        0.003306157               0.3306157      8.331182       0.003300704
#   adj_close_log_ret_perc     volume
# 1                     NA 3596590000
# 2             -0.2071518 3575690000
# 3              0.3300704 3611180000
#
# The scatter plot
DS_length <- nrow(Data_df)
show(DS_length)
# [1] 502
First_Day <- as.character(Data_df$date[1])
show(First_Day)
# [1] "2023-04-10"
Last_Day <- as.character(Data_df$date[DS_length])
show(Last_Day)
# [1] "2025-04-09"
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Essentials of Time Series Analysis \u0040 MPSMF 2024-2025",
                             paste("Standard & Poor 500 - Adjusted Daily Closing Prices from ", .(First_Day), " to ", .(Last_Day), sep="")))
link <- "https://finance.yahoo.com/quote/%5ESPX/history/"
subtitle_content <- bquote(paste("Data set length - ", .(DS_length), " sample points. Data by courtesy of Yahoo Finance - ", .(link)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("")
# numbers::primeFactors(DS_length+1)
x_breaks_num <- 36 # (deduced from primeFactors(DS_length+1))
x_breaks_low <- Data_df$x[1]
x_breaks_up <- Data_df$x[DS_length]
x_binwidth <- ceiling((x_breaks_up-x_breaks_low)/x_breaks_num)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=x_binwidth)
if((x_breaks_up-max(x_breaks))>x_binwidth/2){x_breaks <- c(x_breaks,x_breaks_up)}
x_labs <- as.character(Data_df$date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("adjusted closing prices (US $)")
y_max <- max(na.rm(Data_df$y))
y_min <- min(na.rm(Data_df$y))
as.numeric(floor(y_max-y_min))
y_breaks_num <- 10
y_binwidth <- round((y_max-y_min)/y_breaks_num, digits=3)
y_breaks_low <- floor((y_min/y_binwidth))*y_binwidth
y_breaks_up <- ceiling((y_max/y_binwidth))*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth), digits=3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0.5
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
point_b <- bquote("adj. daily closing prices")
line_red  <- bquote("LOESS curve")
line_green  <- bquote("regression line")
leg_labs <- c(point_b, line_red, line_green)
leg_cols <- c("point_b"="blue", "line_red"="red", "line_green"="green")
leg_breaks <- c("point_b", "line_red", "line_green")
#
SP500_adj_daily_close_sp <- ggplot2::ggplot(Data_df) +
  geom_smooth(aes(x=x, y=y, color="line_green"), method="lm", formula=y ~ x, alpha=1, lwd=0.8, linetype="solid",
              se=FALSE, fullrange=FALSE) +
  geom_smooth(aes(x=x, y=y, color="line_red"), method="loess", formula=y ~ x, alpha=1, lwd=0.8, linetype="dashed",
              se=FALSE, fullrange=FALSE) +
  geom_point(alpha=1, size=0.6, shape=19, aes(x=x, y=y, color="point_b")) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_breaks,
                      guide=guide_legend(override.aes=list(shape=c(19,NA,NA), linetype=c("blank", "dashed", "solid")))) +
  theme(plot.title=element_text(hjust=0.5, size=12),
        plot.subtitle=element_text(hjust= 0.5, size=10),
        axis.text.x=element_text(angle=-45, vjust=1, hjust=-0.3),
        legend.key.width=unit(0.8,"cm"), legend.position= "bottom")
plot(SP500_adj_daily_close_sp)
#
# The line plot
line_blue  <- bquote("daily adj. closing prices")
line_red  <- bquote("LOESS curve")
line_green  <- bquote("regression line")
leg_labs <- c(line_blue, line_red, line_green)
leg_cols <- c("line_blue"="blue", "line_red"="red", "line_green"="green")
leg_breaks <- c("line_blue", "line_red", "line_green")
SP500_adj_daily_close_lp <- ggplot2::ggplot(Data_df) +
  geom_smooth(aes(x=x, y=y, color="line_green"), method="lm", formula=y ~ x, alpha=1, lwd=0.8, linetype="solid",
              se=FALSE, fullrange=FALSE) +
  geom_smooth(aes(x=x, y=y, color="line_red"), method="loess", formula=y ~ x, alpha=1, lwd=0.8, linetype="dashed",
              se=FALSE, fullrange=FALSE) +
  geom_line(aes(x=x, y=y, color="line_blue", group=1), alpha=1, lwd=0.6, linetype="solid") +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_breaks,
                      guide=guide_legend(override.aes=list(linetype=c("solid", "dashed", "solid")))) +
  theme(plot.title=element_text(hjust=0.5, size=12),
        plot.subtitle=element_text(hjust= 0.5, size=10),
        plot.caption=element_text(hjust=1.0, size=8),
        axis.text.x=element_text(angle=-45, vjust=1, hjust=-0.3),
        legend.key.width=unit(0.8,"cm"), legend.position= "bottom")
plot(SP500_adj_daily_close_lp)
#
# Upon examining the scatter and line plots, we observe an increasing trend accompanied by some sharp declines, especially in the last part of
# the plot. The overall trend does not appear linear when we compare the LOESS curve to the regression line. If it weren't for the significant
# drop starting by the second half of February 2025, the trend would seem exponential, aligning with predictions from the geometric Brownian 
# motion model. We lack visual evidence of seasonality. Generally, stock market time series do not exhibit a pronounced seasonal component due 
# to the inherent nature of the stock market, making it challenging to define a seasonal period. While stock markets are typically closed on 
# Saturdays and Sundays, they also shut down for national and some local holidays. This complicates the management of a standard five-day 
# trading period. Additionally, stock price movements are driven by traders' continuous buying and selling, influenced by their expectations
# of future stock returns, which are shaped by unpredictable economic, political, and social news. Therefore, it's difficult to identify a 
# seasonal mechanism for stock price movements. 
# However, we can observe some evidence of hourly seasonality on trading days, but this would require intra-day data for analysis. 
# Furthermore, the distribution of training set points around the LOESS curve does not appear homogeneous along the path, indicating visual
# evidence of heteroscedasticity.
###############################################################################################################################################
# Now, we draw a scatter and a line plot of the S&P 500 adjusted daily closing price logarithms from Apr-10-2023 to Apr-09-2025.
# We consider again an auxiliary data frame and rename some columns of the latter.
Data_df <- SPX_2023_04_13_2025_04_12_df
head(Data_df, 3)
#   index       date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log
# 1     1 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA      8.329952
# 2     2 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373      8.327881
# 3     3 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157      8.331182
#   adj_close_log_ret adj_close_log_ret_perc     volume
# 1                NA                     NA 3596590000
# 2      -0.002071518             -0.2071518 3575690000
# 3       0.003300704              0.3300704 3611180000
#
Data_df <- dplyr::rename(Data_df, x=index, y=adj_close_log)
head(Data_df, 3)
#   x       date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc        y adj_close_log_ret
# 1 1 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA 8.329952                NA
# 2 2 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373 8.327881      -0.002071518
# 3 3 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157 8.331182       0.003300704
#   adj_close_log_ret_perc     volume
# 1                     NA 3596590000
# 2             -0.2071518 3575690000
# 3              0.3300704 3611180000
#
# The scatter plot
DS_length <- nrow(Data_df)
show(DS_length)
# [1] 502
First_Day <- as.character(Data_df$date[1])
show(First_Day)
# [1] "2023-04-10"
Last_Day <- as.character(Data_df$date[DS_length])
show(Last_Day)
# [1] "2025-04-09"
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Essentials of Time Series Analysis \u0040 MPSMF 2024-2025",
                             paste("Standard & Poor 500 - Adjusted Daily Closing Price Logarithms from ", .(First_Day), " to ", .(Last_Day), sep="")))
link <- "https://finance.yahoo.com/quote/%5ESPX/history/"
subtitle_content <- bquote(paste("Data set length - ", .(DS_length), " sample points. Data by courtesy of Yahoo Finance - ", .(link)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("")
# numbers::primeFactors(DS_length+1)
x_breaks_num <- 36 # (deduced from primeFactors(DS_length+1))
x_breaks_low <- Data_df$x[1]
x_breaks_up <- Data_df$x[DS_length]
x_binwidth <- ceiling((x_breaks_up-x_breaks_low)/x_breaks_num)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=x_binwidth)
if((x_breaks_up-max(x_breaks))>x_binwidth/2){x_breaks <- c(x_breaks,x_breaks_up)}
x_labs <- as.character(Data_df$date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("adjusted closing price logarithms (US $)")
y_max <- max(na.rm(Data_df$y))
y_min <- min(na.rm(Data_df$y))
as.numeric(floor(y_max-y_min))
y_breaks_num <- 10
y_binwidth <- round((y_max-y_min)/y_breaks_num, digits=3)
y_breaks_low <- floor((y_min/y_binwidth))*y_binwidth
y_breaks_up <- ceiling((y_max/y_binwidth))*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth), digits=3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0.5
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
point_b <- bquote("adj. daily closing price logarithms")
line_red  <- bquote("LOESS curve")
line_green  <- bquote("regression line")
leg_labs <- c(point_b, line_red, line_green)
leg_cols <- c("point_b"="blue", "line_red"="red", "line_green"="green")
leg_breaks <- c("point_b", "line_red", "line_green")
#
SP500_adj_daily_close_price_log_sp <- ggplot2::ggplot(Data_df) +
  geom_smooth(aes(x=x, y=y, color="line_green"), method="lm", formula=y ~ x, alpha=1, lwd=0.8, linetype="solid",
              se=FALSE, fullrange=FALSE) +
  geom_smooth(aes(x=x, y=y, color="line_red"), method="loess", formula=y ~ x, alpha=1, lwd=0.8, linetype="dashed",
              se=FALSE, fullrange=FALSE) +
  geom_point(alpha=1, size=0.6, shape=19, aes(x=x, y=y, color="point_b")) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_breaks,
                      guide=guide_legend(override.aes=list(shape=c(19,NA,NA), linetype=c("blank", "dashed", "solid")))) +
  theme(plot.title=element_text(hjust=0.5, size=12),
        plot.subtitle=element_text(hjust= 0.5, size=10),
        axis.text.x=element_text(angle=-45, vjust=1, hjust=-0.3),
        legend.key.width=unit(0.8,"cm"), legend.position= "bottom")
plot(SP500_adj_daily_close_price_log_sp)
#
# The line plot
line_blue  <- bquote("adj. daily closing price logarithms")
line_red  <- bquote("LOESS curve")
line_green  <- bquote("regression line")
leg_labs <- c(line_blue, line_red, line_green)
leg_cols <- c("line_blue"="blue", "line_red"="red", "line_green"="green")
leg_breaks <- c("line_blue", "line_red", "line_green")
SP500_adj_daily_close_price_log_lp <- ggplot2::ggplot(Data_df) +
  geom_smooth(aes(x=x, y=y, color="line_green"), method="lm", formula=y ~ x, alpha=1, lwd=0.8, linetype="solid",
              se=FALSE, fullrange=FALSE) +
  geom_smooth(aes(x=x, y=y, color="line_red"), method="loess", formula=y ~ x, alpha=1, lwd=0.8, linetype="dashed",
              se=FALSE, fullrange=FALSE) +
  geom_line(aes(x=x, y=y, color="line_blue", group=1), alpha=1, lwd=0.6, linetype="solid") +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_breaks,
                      guide=guide_legend(override.aes=list(linetype=c("solid", "dashed", "solid")))) +
  theme(plot.title=element_text(hjust=0.5, size=12),
        plot.subtitle=element_text(hjust= 0.5, size=10),
        plot.caption=element_text(hjust=1.0, size=8),
        axis.text.x=element_text(angle=-45, vjust=1, hjust=-0.3),
        legend.key.width=unit(0.8,"cm"), legend.position= "bottom")
plot(SP500_adj_daily_close_price_log_lp)
#
# The scatter and line plots for the adjusted daily price logarithms closely resemble those obtained for the adjusted daily prices. Therefore, 
# the same considerations relevant to the previous case apply here as well. The main difference is that the data points are more evenly 
# distributed around the LOESS curve. The logarithmic transformation reduces the values in the data set, with larger values experiencing a more
# pronounced reduction. This results in less visible evidence of heteroskedasticity.
###############################################################################################################################################
# With the goal of building a model for forecasting the S&P 500 adjusted daily closing prices, we split the data set in a training set, about 
# the $95\%$ of the data set, and a test set, about $5\%$ of the data set. Again, we introduce an auxiliary data frame.
Data_df <- SPX_2023_04_13_2025_04_12_df
head(Data_df, 3)
#   index       date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log
# 1     1 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA      8.329952
# 2     2 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373      8.327881
# 3     3 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157      8.331182
#   adj_close_log_ret adj_close_log_ret_perc     volume
# 1                NA                     NA 3596590000
# 2      -0.002071518             -0.2071518 3575690000
# 3       0.003300704              0.3300704 3611180000
#
Data_df <- dplyr::rename(Data_df, x=index, y=adj_close)
head(Data_df, 3)
#   x       date    high     low    open   close       y adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log adj_close_log_ret
# 1 1 2023-04-13 4150.26 4099.40 4100.04 4146.22 4146.22            NA                 NA                      NA      8.329952                NA
# 2 2 2023-04-14 4163.19 4113.20 4140.11 4137.64 4137.64     -8.580078       -0.002069373              -0.2069373      8.327881      -0.002071518
# 3 3 2023-04-17 4151.72 4123.18 4137.17 4151.32 4151.32     13.679688        0.003306157               0.3306157      8.331182       0.003300704
#   adj_close_log_ret_perc     volume
# 1                     NA 3596590000
# 2             -0.2071518 3575690000
# 3              0.3300704 3611180000
#
TrnS_First_Day <- First_Day
show(First_Day)
# [1] "2023-04-13"
TrnS_Last_Day <- as.character(Data_df$date[floor(nrow(Data_df)*0.95)])
show(TrnS_Last_Day)
# [1] "2025-03-06"
TrnS_length <- length(Data_df$date[which(Data_df$date<=as.Date(TrnS_Last_Day))])
show(TrnS_length)
# [1] 476
TstS_First_Day <- as.character(as.Date(TrnS_Last_Day)+1)
show(TstS_First_Day)
# [1] "2025-03-07"
TstS_Last_Day <- Last_Day
show(TstS_Last_Day)
# [1] "2025-04-11"
TstS_length <- length(Data_df$date[which(Data_df$date>=as.Date(TstS_First_Day))])
show(TstS_length)
# [1] 26
TstS_length == DS_length-TrnS_length
# TRUE
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Essentials of Time Series Analysis \u0040 MPSMF 2024-2025",
                             paste("Standard & Poor 500 Adjusted Daily Closing Price - Training and Test Sets - from ", .(First_Day), " to ", .(Last_Day), sep="")))
link <- "https://finance.yahoo.com/quote/%5ESPX/history/"
subtitle_content <- bquote(paste("Training set length ", .(TrnS_length), " sample points, from ", .(TrnS_First_Day), " to ", .(TrnS_Last_Day),". Test set length ", .(TstS_length), " sample points, from ", .(TstS_First_Day), " to ", .(TstS_Last_Day),". Data by courtesy of Yahoo Finance - ", .(link)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("")
# numbers::primeFactors(DS_length+2)
x_breaks_num <- 42 # (deduced from primeFactors(DS_length+1))
x_breaks_low <- Data_df$x[1]
x_breaks_up <- Data_df$x[DS_length]
x_binwidth <- ceiling((x_breaks_up-x_breaks_low)/x_breaks_num)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=x_binwidth)
if((x_breaks_up-max(x_breaks))>x_binwidth/2){x_breaks <- c(x_breaks,x_breaks_up)}
x_labs <- as.character(Data_df$date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("adjusted close prices (US $)")
y_max <- max(na.rm(Data_df$y))
y_min <- min(na.rm(Data_df$y))
as.numeric(floor(y_max-y_min))
y_breaks_num <- 10
y_binwidth <- round((y_max-y_min)/y_breaks_num, digits=3)
y_breaks_low <- floor((y_min/y_binwidth))*y_binwidth
y_breaks_up <- ceiling((y_max/y_binwidth))*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth), digits=3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0.5
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
point_black <- bquote("daily adj. close prices - training set")
point_b <- bquote("daily adj. close prices - test set")
line_green <- bquote("regression line (training set)")
line_red <- bquote("LOESS curve (training set)")
leg_point_labs <- c(point_black, point_b)
leg_point_cols <- c("point_black"="black", "point_b"="blue")
leg_point_breaks <- c("point_black", "point_b")
leg_line_labs <- c(line_green, line_red)
leg_line_cols <- c("line_green"="green", "line_red"="red")
leg_line_breaks <- c("line_green", "line_red")
leg_col_labs   <- c(leg_point_labs,leg_line_labs)
leg_col_cols   <- c(leg_point_cols,leg_line_cols)
leg_col_breaks <- c(leg_point_breaks,leg_line_breaks)
#
SP500_adj_daily_close_TrnS_TstS_sp <- ggplot(Data_df, aes(x=x)) +
  geom_vline(xintercept=Data_df$x[TrnS_length], lwd=0.5, color="black") +
  geom_smooth(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="line_green"), method="lm" , formula=y ~ x, 
              alpha=1, lwd=0.9, linetype="solid", se=FALSE, fullrange=FALSE) +
  geom_smooth(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="line_red"), method="loess", formula=y ~ x, 
              alpha=1, lwd=0.9, linetype="dashed", se=FALSE, fullrange=FALSE) +
  geom_point(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="point_black"), alpha=1, size=0.7, shape=19) + 
  geom_point(data=subset(Data_df, Data_df$x>x[TrnS_length]), aes(y=y, color="point_b"), alpha=1, size=0.7, shape=19) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  guides(linetype="none", shape="none") +
  scale_colour_manual(name="", labels=leg_col_labs, values=leg_col_cols, breaks=leg_col_breaks) +
  guides(colour=guide_legend(override.aes=list(shape=c(19, 19, NA, NA), linetype=c("blank", "blank", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5, size=12),
        plot.subtitle=element_text(hjust= 0.5, size=10),
        plot.caption=element_text(hjust=1.0, size=8),
        axis.text.x=element_text(angle=-45, vjust=1, hjust=-0.3),
        legend.key.width=unit(0.8,"cm"), legend.position= "bottom")
plot(SP500_adj_daily_close_TrnS_TstS_sp)
#
# The line plot
SP500_adj_daily_close_TrnS_TstS_lp <- ggplot(Data_df, aes(x=x)) +
  geom_vline(xintercept=Data_df$x[TrnS_length], lwd=0.5, color="black") +
  geom_smooth(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="line_green"), method="lm" , formula=y ~ x, 
              alpha=1, lwd=0.9, linetype="solid", se=FALSE, fullrange=FALSE) +
  geom_smooth(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="line_red"), method="loess", formula=y ~ x,
              alpha=1, lwd=0.9, linetype="dashed", se=FALSE, fullrange=FALSE) +
  geom_line(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="point_black"), alpha=1, lwd=0.7, linetype="solid") +
  geom_line(data=subset(Data_df, Data_df$x>x[TrnS_length]), aes(y=y, color="point_b"), alpha=1, lwd=0.7, linetype="solid") +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="", labels=leg_col_labs, values=leg_col_cols, breaks=leg_col_breaks) +
  theme(plot.title=element_text(hjust=0.5, size=12),
        plot.subtitle=element_text(hjust= 0.5, size=10),
        plot.caption=element_text(hjust=1.0, size=8),
        axis.text.x=element_text(angle=-45, vjust=1, hjust=-0.3),
        legend.key.width=unit(0.8,"cm"), legend.position= "bottom")
plot(SP500_adj_daily_close_TrnS_TstS_lp)
#
###############################################################################################################################################
# Now, we draw a scatter and a line plot of the S&P 500 adjusted daily closing price logarithms training and test set. 
Data_df <- SPX_2023_04_13_2025_04_12_df
head(Data_df, 3)
#   index       date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc adj_close_log
# 1     1 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA      8.329952
# 2     2 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373      8.327881
# 3     3 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157      8.331182
#   adj_close_log_ret adj_close_log_ret_perc     volume
# 1                NA                     NA 3596590000
# 2      -0.002071518             -0.2071518 3575690000
# 3       0.003300704              0.3300704 3611180000
#
Data_df <- dplyr::rename(Data_df, x=index, y=adj_close_log)
head(Data_df, 3)
#   x       date    high     low    open   close adj_close adj_close_ret adj_close_ret_rate adj_close_ret_rate_perc        y adj_close_log_ret
# 1 1 2023-04-13 4150.26 4099.40 4100.04 4146.22   4146.22            NA                 NA                      NA 8.329952                NA
# 2 2 2023-04-14 4163.19 4113.20 4140.11 4137.64   4137.64     -8.580078       -0.002069373              -0.2069373 8.327881      -0.002071518
# 3 3 2023-04-17 4151.72 4123.18 4137.17 4151.32   4151.32     13.679688        0.003306157               0.3306157 8.331182       0.003300704
#   adj_close_log_ret_perc     volume
# 1                     NA 3596590000
# 2             -0.2071518 3575690000
# 3              0.3300704 3611180000
#
# The scatter plot
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Essentials of Time Series Analysis \u0040 MPSMF 2024-2025",
                             paste("Standard & Poor 500 Adjusted Daily Closing Price Logarithms - Training and Test Sets - from ", .(First_Day), " to ", .(Last_Day), sep="")))
link <- "https://finance.yahoo.com/quote/%5ESPX/history/"
subtitle_content <- bquote(paste("Training set length ", .(TrnS_length), " sample points, from ", .(TrnS_First_Day), " to ", .(TrnS_Last_Day),". Test set length ", .(TstS_length), " sample points, from ", .(TstS_First_Day), " to ", .(TstS_Last_Day),". Data by courtesy of Yahoo Finance - ", .(link)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("")
# numbers::primeFactors(DS_length+2)
x_breaks_num <- 42 # (deduced from primeFactors(DS_length+1))
x_breaks_low <- Data_df$x[1]
x_breaks_up <- Data_df$x[DS_length]
x_binwidth <- ceiling((x_breaks_up-x_breaks_low)/x_breaks_num)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=x_binwidth)
if((x_breaks_up-max(x_breaks))>x_binwidth/2){x_breaks <- c(x_breaks,x_breaks_up)}
x_labs <- as.character(Data_df$date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("adjusted closing price logarithms (US $)")
y_max <- max(na.rm(Data_df$y))
y_min <- min(na.rm(Data_df$y))
as.numeric(floor(y_max-y_min))
y_breaks_num <- 10
y_binwidth <- round((y_max-y_min)/y_breaks_num, digits=3)
y_breaks_low <- floor((y_min/y_binwidth))*y_binwidth
y_breaks_up <- ceiling((y_max/y_binwidth))*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth), digits=3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0.5
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
point_black <- bquote("adj. daily closing price logarithms - training set")
point_b <- bquote("adj. daily closing price logarithms - test set")
line_green <- bquote("regression line (training set)")
line_red <- bquote("LOESS curve (training set)")
leg_point_labs <- c(point_black, point_b)
leg_point_cols <- c("point_black"="black", "point_b"="blue")
leg_point_breaks <- c("point_black", "point_b")
leg_line_labs <- c(line_green, line_red)
leg_line_cols <- c("line_green"="green", "line_red"="red")
leg_line_breaks <- c("line_green", "line_red")
leg_col_labs   <- c(leg_point_labs,leg_line_labs)
leg_col_cols   <- c(leg_point_cols,leg_line_cols)
leg_col_breaks <- c(leg_point_breaks,leg_line_breaks)
#
SP500_adj_daily_close_log_TrnS_TstS_sp <- ggplot(Data_df, aes(x=x)) +
  geom_vline(xintercept=Data_df$x[TrnS_length], lwd=0.5, color="black") +
  geom_smooth(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="line_green"), method="lm" , formula=y ~ x, 
              alpha=1, lwd=0.9, linetype="solid", se=FALSE, fullrange=FALSE) +
  geom_smooth(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="line_red"), method="loess", formula=y ~ x, 
              alpha=1, lwd=0.9, linetype="dashed", se=FALSE, fullrange=FALSE) +
  geom_point(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="point_black"), alpha=1, size=0.7, shape=19) + 
  geom_point(data=subset(Data_df, Data_df$x>x[TrnS_length]), aes(y=y, color="point_b"), alpha=1, size=0.7, shape=19) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  guides(linetype="none", shape="none") +
  scale_colour_manual(name="", labels=leg_col_labs, values=leg_col_cols, breaks=leg_col_breaks) +
  guides(colour=guide_legend(override.aes=list(shape=c(19, 19, NA, NA), linetype=c("blank", "blank", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5, size=12),
        plot.subtitle=element_text(hjust= 0.5, size=10),
        plot.caption=element_text(hjust=1.0, size=8),
        axis.text.x=element_text(angle=-45, vjust=1, hjust=-0.3),
        legend.key.width=unit(0.8,"cm"), legend.position= "bottom")
plot(SP500_adj_daily_close_log_TrnS_TstS_sp)
#
# The line plot
SP500_adj_daily_close_log_TrnS_TstS_lp <- ggplot(Data_df, aes(x=x)) +
  geom_vline(xintercept=Data_df$x[TrnS_length], lwd=0.5, color="black") +
  geom_smooth(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="line_green"), method="lm" , formula=y ~ x, 
              alpha=1, lwd=0.9, linetype="solid", se=FALSE, fullrange=FALSE) +
  geom_smooth(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="line_red"), method="loess", formula=y ~ x,
              alpha=1, lwd=0.9, linetype="dashed", se=FALSE, fullrange=FALSE) +
  geom_line(data=subset(Data_df, Data_df$x<=x[TrnS_length]), aes(y=y, color="point_black"), alpha=1, lwd=0.7, linetype="solid") +
  geom_line(data=subset(Data_df, Data_df$x>x[TrnS_length]), aes(y=y, color="point_b"), alpha=1, lwd=0.7, linetype="solid") +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="", labels=leg_col_labs, values=leg_col_cols, breaks=leg_col_breaks) +
  theme(plot.title=element_text(hjust=0.5, size=12),
        plot.subtitle=element_text(hjust= 0.5, size=10),
        plot.caption=element_text(hjust=1.0, size=8),
        axis.text.x=element_text(angle=-45, vjust=1, hjust=-0.3),
        legend.key.width=unit(0.8,"cm"), legend.position= "bottom")
plot(SP500_adj_daily_close_log_TrnS_TstS_lp)
#
###############################################################################################################################################



head(SPX_2023_04_13_2025_04_12_df, 3)

# PIPPAZZO

# European Options on Standard & Poor 500 (Yahoo Finance - ^SPX)
# library(quantmod)
# SPX_Opt_2023_05_12_06_16 <- getOptionChain("^SPX", Exp="2023-06-16", src='yahoo')
getOptionChain("^SPX", Exp=NULL, src='yahoo')
# Error in getOptionChain.yahoo(Symbols = "^SPX", Exp = "2023-06-16") : 
# Unable to obtain yahoo crumb. If this is being called from a GDPR country, Yahoo requires GDPR consent, which cannot be scripted
# class(SPX_Opt_2023_05_12_06_16)
# length(SPX_Opt_2023_05_12_06_16)
# show(SPX_Opt_2023_05_12_06_16[[1]])
# class(SPX_Opt_2023_05_12_06_16[[1]])
# nrow(SPX_Opt_2023_05_12_06_16[[1]])
# show(SPX_Opt_2023_05_12_06_16[[2]])
# class(SPX_Opt_2023_05_12_06_16[[2]])
# nrow(SPX_Opt_2023_05_12_06_16[[2]])
# show(SPX_Opt_2023_05_12_06_16[[1]]$Strike)
# show(SPX_Opt_2023_05_12_06_16[[2]]$Strike)
# Strike <- sort(union(SPX_Opt_2023_05_12_06_16[[1]]$Strike, SPX_Opt_2023_05_12_06_16[[2]]$Strike))
# show(Strike)
# length(Strike)
# Call_Indx <- sapply(Strike, function(x) which(SPX_Opt_2023_05_12_06_16[[1]]$Strike==x)[1])
# Put_Indx <- sapply(Strike, function(x) which(SPX_Opt_2023_05_12_06_16[[2]]$Strike==x)[1])
# 
# SPX_Opt_2023_05_12_06_16_df <- data.frame(Indx=1:length(Strike),
#                                     Call_ContractID=SPX_Opt_2023_05_12_06_16[[1]]$ContractID[Call_Indx], 
#                                     Call_Bid=SPX_Opt_2023_05_12_06_16[[1]]$Bid[Call_Indx],
#                                     Call_Ask=SPX_Opt_2023_05_12_06_16[[1]]$Ask[Call_Indx],
#                                     Call_Vol=SPX_Opt_2023_05_12_06_16[[1]]$Vol[Call_Indx],
#                                     Call_OI=SPX_Opt_2023_05_12_06_16[[1]]$OI[Call_Indx],
#                                     Call_PrChg=SPX_Opt_2023_05_12_06_16[[1]]$Chg[Call_Indx],
#                                     Call_PrChgPct=SPX_Opt_2023_05_12_06_16[[1]]$ChgPct[Call_Indx],
#                                     Call_LastTrTime=SPX_Opt_2023_05_12_06_16[[1]]$LastTradeTime[Call_Indx],
#                                     Call_LastPr=SPX_Opt_2023_05_12_06_16[[1]]$Last[Call_Indx],
#                                     Call_ImplVol=SPX_Opt_2023_05_12_06_16[[1]]$IV[Call_Indx],
#                                     Call_ITM=SPX_Opt_2023_05_12_06_16[[1]]$ITM[Call_Indx],
#                                     Strike=Strike,
#                                     Put_ITM=SPX_Opt_2023_05_12_06_16[[2]]$ITM[Put_Indx],
#                                     Put_ImplVol=SPX_Opt_2023_05_12_06_16[[2]]$IV[Put_Indx],
#                                     Put_LastPr=SPX_Opt_2023_05_12_06_16[[2]]$Last[Put_Indx],
#                                     Put_LastTrTime=SPX_Opt_2023_05_12_06_16[[2]]$LastTradeTime[Put_Indx],
#                                     Put_PrChgPct=SPX_Opt_2023_05_12_06_16[[2]]$ChgPct[Put_Indx],
#                                     Put_PrChg=SPX_Opt_2023_05_12_06_16[[2]]$Chg[Put_Indx],
#                                     Put_OI=SPX_Opt_2023_05_12_06_16[[2]]$OI[Put_Indx],
#                                     Put_Vol=SPX_Opt_2023_05_12_06_16[[2]]$Vol[Put_Indx],
#                                     Put_Ask=SPX_Opt_2023_05_12_06_16[[2]]$Ask[Put_Indx],
#                                     Put_Bid=SPX_Opt_2023_05_12_06_16[[2]]$Bid[Put_Indx],
#                                     Put_ContractID=SPX_Opt_2023_05_12_06_16[[2]]$ContractID[Put_Indx])
# head(SPX_Opt_2023_05_12_06_16_df,10)                                   
# tail(SPX_Opt_2023_05_12_06_16_df,10)
# write.csv(SPX_Opt_2023_05_12_06_16_df,"C:/Users/rober/My Documents - Notebook (local)/My Classes/MPSMF/R-Scripts & Data/SPX_Option_Chain_2023_05_12_06_16.csv")
# dir("C:/Users/rober/My Documents - Notebook (local)/My Classes/MPSMF/R-Scripts & Data")
# rm(SPX_Opt_2023_05_12_06_16_df)
# head(SPX_Opt_2023_05_12_06_16_df)
#
SPX_Opt_2023_04_11_06_16_df <- read.csv("SPX_Option_Chain_2023_04_11_06_16.csv")
class(SPX_Opt_2023_04_11_06_16_df)
# [1] "data.frame"
head(SPX_Opt_2023_04_11_06_16_df,10)
tail(SPX_Opt_2023_04_11_06_16_df,10)
#
class(SPX_Opt_2023_04_11_06_16_df$Call_LastTrTime)
# [1] "character"
Call_LastTrDate_df <- data.frame(Call_LastTrDate=as.Date(substring(na.rm(SPX_Opt_2023_04_11_06_16_df$Call_LastTrTime), 1, 11), format="%d/%m/%Y"))
class(Call_LastTrDate_df)
# [1] "data.frame"
head(Call_LastTrDate_df,20)
tail(Call_LastTrDate_df,20)
nrow(Call_LastTrDate_df)
Call_LastTrDate_tb <- table(Call_LastTrDate_df)   
class(Call_LastTrDate_tb)
# [1] "table"
show(Call_LastTrDate_tb)
# 2022-07-13 2022-09-15 2022-10-13 2022-10-14 2022-10-31 2022-11-14 2022-11-18 2022-12-15 2022-12-19 2022-12-20 2022-12-28 2023-01-06 2023-01-10 
#      1          2          2          1          1          2          2          1          3          1          2          1          1 
# 2023-01-18 2023-01-23 2023-01-27 2023-01-30 2023-01-31 2023-02-02 2023-02-07 2023-02-08 2023-02-10 2023-02-13 2023-02-16 2023-02-17 2023-02-22 
#      1          1          1          1          2          2          1          1          2          2          1          4          2 
# 2023-02-23 2023-02-27 2023-03-02 2023-03-05 2023-03-06 2023-03-07 2023-03-10 2023-03-13 2023-03-14 2023-03-15 2023-03-16 2023-03-17 2023-03-20 
#      3          2          1          1          1          3          3          2          2          3          4          1          7 
# 2023-03-21 2023-03-22 2023-03-23 2023-03-24 2023-03-27 2023-03-28 2023-03-29 2023-03-30 2023-03-31 2023-04-03 2023-04-04 2023-04-05 2023-04-06 
#      3          3          4          8          3          7          2          8         16          7         15         13          5 
# 2023-04-10 2023-04-11 2023-04-12 
#     33         75          1 
#
Put_LastTrDate_df <- data.frame(Put_LastTrDate=as.Date(substring(na.rm(SPX_Opt_2023_04_11_06_16_df$Put_LastTrTime), 1, 11), format="%d/%m/%Y"))
class(Put_LastTrDate_df)
# [1] "data.frame"
head(Put_LastTrDate_df,20)
tail(Put_LastTrDate_df,20)
nrow(Put_LastTrDate_df)
Put_LastTrDate_tb <- table(Put_LastTrDate_df)   
class(Put_LastTrDate_tb)
# [1] "table"
show(Put_LastTrDate_tb)
# 2021-12-08 2022-03-30 2022-04-22 2022-05-26 2022-06-06 2022-06-13 2022-06-22 2022-07-21 2022-07-26 2022-11-10 2022-11-16 2022-11-23 2022-12-19 
#     1          1          1          1          1          1          1          1          1          1          1          1          2 
# 2022-12-20 2022-12-23 2023-02-03 2023-02-06 2023-02-15 2023-02-17 2023-02-24 2023-03-01 2023-03-06 2023-03-10 2023-03-13 2023-03-16 2023-03-21 
#     1          1          1          1          1          3          1          1          1          1          1          3          1 
# 2023-03-23 2023-03-24 2023-03-27 2023-03-29 2023-03-30 2023-03-31 2023-04-03 2023-04-04 2023-04-05 2023-04-06 2023-04-10 2023-04-11 2023-04-12 
#     2          2          3          1          4          1          3         15         14         23         44        145          2 
#
Call_LastTrDate_2023_04_11_Indx <- SPX_Opt_2023_04_11_06_16_df$Indx[which(Call_LastTrDate_df$Call_LastTrDate=="2023-04-11")]
length(Call_LastTrDate_2023_04_11_Indx)
# [1] 75
show(Call_LastTrDate_2023_04_11_Indx)
# [1]   5  15  44  52  99 121 129 130 131 134 139 144 149 150 152 153 154 157 159 164 168 169 170 171 172 175 177 178 179 181 187 189 193 194 195 197
# [37] 198 200 201 203 204 207 208 210 211 212 213 214 216 217 219 220 221 222 223 224 225 226 228 229 230 231 232 233 234 235 237 239 240 241 244 245
# [73] 246 253 257
Put_LastTrDate_2023_04_11_Indx <- SPX_Opt_2023_04_11_06_16_df$Indx[which(Put_LastTrDate_df$Put_LastTrDate=="2023-04-11")]
length(Put_LastTrDate_2023_04_11_Indx)
# [1] 145
show(Put_LastTrDate_2023_04_11_Indx)
# [1]  15  16  17  20  21  22  23  24  26  29  30  32  37  38  41  42  43  44  46  47  48  49  52  53  54  55  56  57  58  59  61  63  64  65  66  71
# [37]  72  73  74  76  77  78  80  81  82  83  85  87  88  89  94  95  98 102 103 104 106 107 108 109 113 114 116 118 119 120 122 124 125 126 129 130
# [73] 131 132 133 134 136 137 138 139 140 142 144 146 148 149 151 152 154 155 156 157 159 160 161 162 163 164 165 166 169 170 173 174 175 176 178 179
# [109] 180 181 182 183 184 185 186 187 188 189 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 214 216 221 222 224 229 233 236 242
# [145] 246
Call_Put_2023_04_11_Indx <- intersect(Call_LastTrDate_2023_04_11_Indx, Put_LastTrDate_2023_04_11_Indx)
length(Call_Put_2023_04_11_Indx)
# [1] 41
show(Call_Put_2023_04_11_Indx)
# [1]  15  44  52 129 130 131 134 139 144 149 152 154 157 159 164 169 170 175 178 179 181 187 189 193 194 195 197 198 200 201 203 204 207 214 216 221
# [37] 222 224 229 233 246
#
Call_LastTrDate_2023_04_10_Indx <- SPX_Opt_2023_04_11_06_16_df$Indx[which(Call_LastTrDate_df$Call_LastTrDate=="2023-04-10")]
length(Call_LastTrDate_2023_04_10_Indx)
# [1] 33
show(Call_LastTrDate_2023_04_10_Indx)
# [1]  26  35  65  71  72 119 132 133 146 148 155 156 162 165 166 167 173 174 176 182 183 184 185 190 191 196 202 205 206 209 215 236 238
Put_LastTrDate_2023_04_10_Indx <- SPX_Opt_2023_04_11_06_16_df$Indx[which(Put_LastTrDate_df$Put_LastTrDate=="2023-04-10")]
length(Put_LastTrDate_2023_04_10_Indx)
# [1] 44
show(Put_LastTrDate_2023_04_10_Indx)
# [1]   7  12  13  19  28  31  34  40  50  51  60  70  90  96  97  99 101 105 110 111 123 135 141 143 150 171 172 208 210 211 213 215 217 218 219 220
# [37] 223 230 237 239 250 256 285 287
Call_Put_2023_04_10_Indx <- intersect(Call_LastTrDate_2023_04_10_Indx, Put_LastTrDate_2023_04_10_Indx)
length(Call_Put_2023_04_10_Indx)
# [1] 1
show(Call_Put_2023_04_10_Indx)
# [1] 215
#
# Put-Call parity
# P_0 = C_0 - S_0 + K/(1+r_f)
# C_0 - P_0 = S_0 - K/(1+r_f)
#
x <- SPX_Opt_2023_04_11_06_16_df$Strike[Call_Put_2023_04_11_Indx]
length(x)
# [1] 41
show(x)
# [1] 2000 3050 3240 3775 3780 3785 3800 3825 3850 3875 3890 3900 3915 3925 3950 3975 3980 4005 4020 4025 4035 4065 4075 4095 4100 4105 4115 4120 4130
# [30] 4135 4145 4150 4165 4200 4210 4235 4240 4250 4275 4310 4420
y <- SPX_Opt_2023_04_11_06_16_df$Call_LastPr[Call_Put_2023_04_11_Indx]-SPX_Opt_2023_04_11_06_16_df$Put_LastPr[Call_Put_2023_04_11_Indx]
length(y)
# [1] 41
show(y)
# [1] 2115.13  728.79      NA  257.87  244.58  242.79  316.23  323.83  264.90  263.62  226.77  233.70  202.59  206.11  193.48  166.70  140.51  135.24
# [19]  127.43  118.12   95.45   66.46   68.30   49.27   37.39   37.30   21.92   11.00    5.26    1.90   -5.00  -10.05  -19.50  -61.85  -79.46 -101.50
# [37]  -94.40 -113.10 -150.80 -179.40      NA
#
Data_df <- data.frame(x,y)
nrow(Data_df)
# [1] 41
Data_df <- na.omit(Data_df)
nrow(Data_df)
# [1] 39
head(Data_df,10)
#     x       y
# 1  2000 2115.13
# 2  3050  728.79
# 4  3775  257.87
# 5  3780  244.58
# 6  3785  242.79
# 7  3800  316.23
# 8  3825  323.83
# 9  3850  264.90
# 10 3875  263.62
# 11 3890  226.77
tail(Data_df,10)
#     x       y
# 31 4145   -5.00
# 32 4150  -10.05
# 33 4165  -19.50
# 34 4200  -61.85
# 35 4210  -79.46
# 36 4235 -101.50
# 37 4240  -94.40
# 38 4250 -113.10
# 39 4275 -150.80
# 40 4310 -179.40
#
rownames(Data_df) <- 1:nrow(Data_df)
head(Data_df,10)
tail(Data_df,10)
n <- nrow(Data_df)
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - \u0040 MPSMF 2024-2025", 
                             paste("Scatter Plot of the Call-Put Difference Against the Strike Price")))
subtitle_content <- bquote(paste("Data set size",~~.(n),~~"sample points;    Evaluation Date 2023-04-11;   Maturity Date 2023-06-16"))
caption_content <- "Author: Roberto Monte" 
# To obtain the sub-multiples of the length of the data set as a hint on the number of breaks to use
# library(numbers)
# primeFactors(n)
x_breaks_num <- 8
x_breaks_low <- min(Data_df$x)
x_breaks_up <- max(Data_df$x)
x_binwidth <- floor((x_breaks_up-x_breaks_low)/x_breaks_num)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=x_binwidth)
if((x_breaks_up-max(x_breaks))>x_binwidth/2){x_breaks <- c(x_breaks,x_breaks_up)}
x_labs <- format(x_breaks, scientific=FALSE)
J <- 0.2
x_lims <- c(x_breaks_low-J*x_binwidth,x_breaks_up+J*x_binwidth)
x_name <- bquote("strike")
y_breaks_num <- 10
y_max <- max(na.rm(Data_df$y))
y_min <- min(na.rm(Data_df$y))
y_binwidth <- round((y_max-y_min)/y_breaks_num, digits=3)
y_breaks_low <- y_min
y_breaks_up <- y_max
y_breaks <- seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth)
if((y_breaks_up-max(y_breaks))>y_binwidth/2){y_breaks <- c(y_breaks,y_breaks_up)}
y_labs <- format(y_breaks, scientific=FALSE)
y_name <- bquote("call-put difference")
K <- 0.2
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("data set sample points")
col_2 <- bquote("regression line")
col_3 <- bquote("LOESS curve")
leg_labs <- c(col_1, col_2, col_3)
leg_cols <- c("col_1"="blue", "col_2"="green", "col_3"="red")
leg_ord <- c("col_1", "col_2", "col_3")
Call_Put_Strike_Pr_2023_04_11_06_16_sp <- ggplot2::ggplot(Data_df, aes(x=x, y=y)) +
  geom_smooth(alpha=1, linewidth=0.8, linetype="dashed", aes(color="col_3"),
              method="loess", formula=y ~ x, se=FALSE, fullrange = FALSE) +
  geom_smooth(alpha=1, linewidth=0.8, linetype="solid", aes(color="col_2"),
              method="lm" , formula=y ~ x, se=FALSE, fullrange=FALSE) +
  geom_point(alpha=1, size=1.0, shape=19, aes(color="col_1")) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_ord,
                      guide=guide_legend(override.aes=list(shape=c(19,NA,NA), 
                                                           linetype=c("blank", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x=element_text(angle=0, vjust=1),
        legend.key.width=unit(1.0,"cm"), legend.position="bottom")
plot(Call_Put_Strike_Pr_2023_04_11_06_16_sp)
#
PutCall_par_lm <- lm(y~x)
summary(PutCall_par_lm)
# Call: lm(formula = y ~ x)
# Residuals:
#   Min       1Q   Median       3Q      Max 
# -269.692    1.934    7.759   17.328  145.753 
#
# Coefficients:
#              Estimate   Std. Error t value Pr(>|t|)    
# (Intercept) 3818.70000   94.27179   40.51   <2e-16 ***
# x             -0.92466    0.02369  -39.03   <2e-16 ***
#   ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 56.77 on 37 degrees of freedom
# (2 observations deleted due to missingness)
# Multiple R-squared:  0.9763,	Adjusted R-squared:  0.9757 
# F-statistic:  1524 on 1 and 37 DF,  p-value: < 2.2e-16
#
S_0 <- PutCall_par_lm$coefficients[1]
show(S_0)
# (Intercept) 
# 3818.7
# 4094.02
# SPX Market Price 4,108.94 -0.17 (-0.00%) At close: April 11 04:55PM EDT
#
# -1/(1+r_f)=c, -1/c=1+r_f, -(1/c+1)=r_f, 
#
r_f <- -(1/PutCall_par_lm$coefficients[2]+1)
show(r_f)
# x
# 0.08147676 
# 0.01144599
#
Days_to_Mat <- as.vector(difftime("2023-06-16", "2023-04-11"))
show(Days_to_Mat)
# 66
#
r_f_a=(1+r_f)^(365.2425/Days_to_Mat)-1
show(r_f_a)
# 0.5425894
# 0.06500779
#
scales::label_percent(accuracy = 0.001)(r_f_a)
# 54.259%
# 6.501%
#
# Put-Call parity
# P_0 = C_0 - S_0 + K/(1+r_f)
# P_0 - C_0 + S_0 = K/(1+r_f)
# SPX Market Price 4,108.94 -0.17 (-0.00%) At close: April 11 04:55PM EDT
#
S_0 <- 4108.94
#
x <- SPX_Opt_2023_04_11_06_16_df$Strike[Call_Put_2023_04_11_Indx]
show(x)
length(x)
y <- SPX_Opt_2023_04_11_06_16_df$Put_LastPr[Call_Put_2023_04_11_Indx]-SPX_Opt_2023_04_11_06_16_df$Call_LastPr[Call_Put_2023_04_11_Indx]+S_0
show(y)
length(y)
#
Data_df <- data.frame(x,y)
nrow(Data_df)
Data_df <- na.omit(Data_df)
nrow(Data_df)
head(Data_df,10)
tail(Data_df,10)
rownames(Data_df) <- 1:nrow(Data_df)
nrow(Data_df)
head(Data_df,10)
tail(Data_df,10)
n <- nrow(Data_df)
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - \u0040 MPSMF 2024-2025", 
                             paste("Scatter Plot of the Put-Call+Price Combination Against the Strike Price")))
subtitle_content <- bquote(paste("Data set size",~~.(n),~~"sample points;    Evaluation Date 2023-04-11;   Maturity Date 2023-06-16"))
caption_content <- "Author: Roberto Monte" 
# To obtain the sub-multiples of the length of the data set as a hint on the number of breaks to use
# library(numbers)
# primeFactors(n)
x_breaks_num <- 8
x_breaks_low <- min(Data_df$x)
x_breaks_up <- max(Data_df$x)
x_binwidth <- floor((x_breaks_up-x_breaks_low)/x_breaks_num)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=x_binwidth)
if((x_breaks_up-max(x_breaks))>x_binwidth/2){x_breaks <- c(x_breaks,x_breaks_up)}
x_labs <- format(x_breaks, scientific=FALSE)
J <- 0.2
x_lims <- c(x_breaks_low-J*x_binwidth,x_breaks_up+J*x_binwidth)
x_name <- bquote("strike")
y_breaks_num <- 10
y_max <- max(na.rm(Data_df$y))
y_min <- min(na.rm(Data_df$y))
y_binwidth <- round((y_max-y_min)/y_breaks_num, digits=3)
y_breaks_low <- y_min
y_breaks_up <- y_max
y_breaks <- seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth)
if((y_breaks_up-max(y_breaks))>y_binwidth/2){y_breaks <- c(y_breaks,y_breaks_up)}
y_labs <- format(y_breaks, scientific=FALSE)
y_name <- bquote("call-put difference")
K <- 0.2
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("data set sample points")
col_2 <- bquote("regression line")
col_3 <- bquote("LOESS curve")
leg_labs <- c(col_1, col_2, col_3)
leg_cols <- c("col_1"="blue", "col_2"="green", "col_3"="red")
leg_ord <- c("col_1", "col_2", "col_3")
Call_Put_Price_Strike_Pr_2023_04_11_06_16_sp <- ggplot2::ggplot(Data_df, aes(x=x, y=y)) +
  geom_smooth(alpha=1, linewidth=0.8, linetype="dashed", aes(color="col_3"),
              method="loess", formula=y ~ x, se=FALSE, fullrange = FALSE) +
  geom_smooth(alpha=1, linewidth=0.8, linetype="solid", aes(color="col_2"),
              method="lm" , formula=y ~ x, se=FALSE, fullrange=FALSE) +
  geom_point(alpha=1, size=1.0, shape=19, aes(color="col_1")) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_ord,
                      guide=guide_legend(override.aes=list(shape=c(19,NA,NA), 
                                                           linetype=c("blank", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x=element_text(angle=0, vjust=1),
        legend.key.width=unit(1.0,"cm"), legend.position="bottom")
plot(Call_Put_Price_Strike_Pr_2023_04_11_06_16_sp)
#
PutCallPrice_par_lm <- lm(y~0+x)
summary(PutCallPrice_par_lm)
#
# 1/(1+r_f)=c, 1/c=1+r_f, 1/c-1=r_f, 
#
r_f <- 1/PutCallPrice_par_lm$coefficients[1]-1
show(r_f)
# 0.007666662
#
Days_to_Mat <- as.vector(difftime("2023-06-16", "2023-04-11"))
show(Days_to_Mat)
# 66
#
r_f_a=(1+r_f)^(365.2425/Days_to_Mat)-1
show(r_f_a)
# 0.04317122
#
scales::label_percent(accuracy = 0.001)(r_f_a)
# 4.317%
#
################################################################################################################################################
SPX_Opt_2023_05_18_06_16_df <- read.csv("SPX_Option_Chain_2023_05_18_06_16.csv")
class(SPX_Opt_2023_05_18_06_16_df)
head(SPX_Opt_2023_05_18_06_16_df,10)
tail(SPX_Opt_2023_05_18_06_16_df,10)
#
Call_LastTrDate_df <- data.frame(Call_LastTrDate=as.Date(substring(na.rm(SPX_Opt_2023_05_18_06_16_df$Call_LastTrTime), 1, 11), format="%d/%m/%Y"))
class(Call_LastTrDate_df)
head(Call_LastTrDate_df,20)
nrow(Call_LastTrDate_df)
Call_LastTrDate_tb <- table(Call_LastTrDate_df)   
class(Call_LastTrDate_tb)
show(Call_LastTrDate_tb)
#
Put_LastTrDate_df <- data.frame(Put_LastTrDate=as.Date(substring(na.rm(SPX_Opt_2023_05_18_06_16_df$Put_LastTrTime), 1, 11), format="%d/%m/%Y"))
class(Put_LastTrDate_df)
head(Put_LastTrDate_df,20)
nrow(Put_LastTrDate_df)
Put_LastTrDate_tb <- table(Put_LastTrDate_df)   
class(Put_LastTrDate_tb)
show(Put_LastTrDate_tb)
#
Call_LastTrDate_2023_05_18_Indx <- SPX_Opt_2023_05_18_06_16_df$Indx[which(Call_LastTrDate_df$Call_LastTrDate=="2023-05-18")]
show(Call_LastTrDate_2023_05_18_Indx)
length(Call_LastTrDate_2023_05_18_Indx)
Put_LastTrDate_2023_05_18_Indx <- SPX_Opt_2023_05_18_06_16_df$Indx[which(Put_LastTrDate_df$Put_LastTrDate=="2023-05-18")]
show(Put_LastTrDate_2023_05_18_Indx)
length(Put_LastTrDate_2023_05_18_Indx)
Call_Put_2023_05_18_Indx <- intersect(Call_LastTrDate_2023_05_18_Indx, Put_LastTrDate_2023_05_18_Indx)
show(Call_Put_2023_05_18_Indx)
length(Call_Put_2023_05_18_Indx)
# 69
#
Call_LastTrDate_2023_05_17_Indx <- SPX_Opt_2023_05_18_06_16_df$Indx[which(Call_LastTrDate_df$Call_LastTrDate=="2023-05-17")]
show(Call_LastTrDate_2023_05_17_Indx)
length(Call_LastTrDate_2023_05_17_Indx)
Put_LastTrDate_2023_05_17_Indx <- SPX_Opt_2023_05_18_06_16_df$Indx[which(Put_LastTrDate_df$Put_LastTrDate=="2023-05-17")]
show(Put_LastTrDate_2023_05_17_Indx)
length(Put_LastTrDate_2023_05_17_Indx)
Call_Put_2023_05_17_Indx <- intersect(Call_LastTrDate_2023_05_17_Indx, Put_LastTrDate_2023_05_17_Indx)
show(Call_Put_2023_05_17_Indx)
length(Call_Put_2023_05_17_Indx)
# 1
#
# Put-Call parity
# P_0 = C_0 - S_0 + K/(1+r_f)
# C_0-P_0 = S_0 - K/(1+r_f)
#
x <- SPX_Opt_2023_05_18_06_16_df$Strike[Call_Put_2023_05_18_Indx]
show(x)
length(x)
y <- SPX_Opt_2023_05_18_06_16_df$Call_LastPr[Call_Put_2023_05_18_Indx]-SPX_Opt_2023_05_18_06_16_df$Put_LastPr[Call_Put_2023_05_18_Indx]
show(y)
length(y)
#
Data_df <- data.frame(x,y)
n <- nrow(Data_df)
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - \u0040 MPSMF 2024-2025", 
                             paste("Scatter Plot of the Call-Put Difference Against the Strike Price")))
subtitle_content <- bquote(paste("Data set size",~~.(n),~~"sample points;    Evaluation Date 2023-05-18;   Maturity Date 2023-06-16"))
caption_content <- "Author: Roberto Monte" 
# To obtain the submultiples of the length of the data set as a hint on the number of breaks to use
# library(numbers)
# primeFactors(n)
x_breaks_num <- 23
x_breaks_low <- min(Data_df$x)
x_breaks_up <- max(Data_df$x)
x_binwidth <- floor((x_breaks_up-x_breaks_low)/x_breaks_num)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=x_binwidth)
if((x_breaks_up-max(x_breaks))>x_binwidth/2){x_breaks <- c(x_breaks,x_breaks_up)}
x_labs <- format(x_breaks, scientific=FALSE)
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth,x_breaks_up+J*x_binwidth)
x_name <- bquote("strike")
y_breaks_num <- 10
y_max <- max(na.rm(Data_df$y))
y_min <- min(na.rm(Data_df$y))
y_binwidth <- round((y_max-y_min)/y_breaks_num, digits=3)
y_breaks_low <- y_min
y_breaks_up <- y_max
y_breaks <- seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth)
if((y_breaks_up-max(y_breaks))>y_binwidth/2){y_breaks <- c(y_breaks,y_breaks_up)}
y_labs <- format(y_breaks, scientific=FALSE)
y_name <- bquote("call-put difference")
K <- 1
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("data set sample points")
col_2 <- bquote("regression line")
col_3 <- bquote("LOESS curve")
leg_labs <- c(col_1, col_2, col_3)
leg_cols <- c("col_1"="blue", "col_2"="green", "col_3"="red")
leg_ord <- c("col_1", "col_2", "col_3")
Call_Put_Strike_Pr_2023_05_18_06_16_sp <- ggplot2::ggplot(Data_df, aes(x=x, y=y)) +
  geom_smooth(alpha=1, linewidth=0.8, linetype="dashed", aes(color="col_3"),
              method="loess", formula=y ~ x, se=FALSE) +
  geom_smooth(alpha=1, linewidth=0.8, linetype="solid", aes(color="col_2"),
              method="lm" , formula=y ~ x, se=FALSE, fullrange=TRUE) +
  geom_point(alpha=1, size=1.0, shape=19, aes(color="col_1")) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_ord,
                      guide=guide_legend(override.aes=list(shape=c(19,NA,NA), 
                                                           linetype=c("blank", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x=element_text(angle=0, vjust=1),
        legend.key.width=unit(1.0,"cm"), legend.position="bottom")
plot(Call_Put_Strike_Pr_2023_05_18_06_16_sp)
#
PutCall_par_lm <- lm(y~x)
summary(PutCall_par_lm)
#
S_0 <- PutCall_par_lm$coefficients[1]
show(S_0)
# 4189.735
# SPX Market Price 4,198.05 At close: May 18 :55PM EDT
#
r_f <- -(1/PutCall_par_lm$coefficients[2]+1)
show(r_f)
# 0.00211723
#
Days_to_Mat <- as.vector(difftime("2023-06-16", "2023-05-18"))
show(Days_to_Mat)
# 29
#
r_f_a=(1+r_f)^(365.2425/Days_to_Mat)-1
show(r_f_a)
# 0.02699536
#
scales::label_percent(accuracy = 0.001)(r_f_a)
# 2.700%
#
# Put-Call parity
# P_0 = C_0 - S_0 + K/(1+r_f)
# P_0 - C_0 + S_0 = K/(1+r_f)
#
S_0 <- 4198.05
#
x <- SPX_Opt_2023_05_18_06_16_df$Strike[Call_Put_2023_05_18_Indx]
show(x)
length(x)
y <- SPX_Opt_2023_05_18_06_16_df$Put_LastPr[Call_Put_2023_05_18_Indx]-SPX_Opt_2023_05_18_06_16_df$Call_LastPr[Call_Put_2023_05_18_Indx]+S_0
show(y)
length(y)
#
Data_df <- data.frame(x,y)
n <- nrow(Data_df)
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - \u0040 MPSMF 2024-2025", 
                             paste("Scatter Plot of the Call-Put Difference Adjusted by the Stock Price Against the Strike Price")))
subtitle_content <- bquote(paste("Data set size",~~.(n),~~"sample points;    Evaluation Date 2023-05-18;   Maturity Date 2023-06-16"))
caption_content <- "Author: Roberto Monte" 
# To obtain the sub-multiples of the length of the data set as a hint on the number of breaks to use
# library(numbers)
# primeFactors(n)
x_breaks_num <- 13
x_breaks_low <- Data_df$x[1]
x_breaks_up <- Data_df$x[n]
x_binwidth <- floor((x_breaks_up-x_breaks_low)/x_breaks_num)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=x_binwidth)
if((x_breaks_up-max(x_breaks))>x_binwidth/2){x_breaks <- c(x_breaks,x_breaks_up)}
x_labs <- format(x_breaks, scientific=FALSE)
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth,x_breaks_up+J*x_binwidth)
x_name <- bquote("strike")
y_breaks_num <- 10
y_max <- max(na.rm(Data_df$y))
y_min <- min(na.rm(Data_df$y))
y_binwidth <- round((y_max-y_min)/y_breaks_num, digits=3)
y_breaks_low <- y_min
y_breaks_up <- y_max
y_breaks <- seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth)
if((y_breaks_up-max(y_breaks))>y_binwidth/2){y_breaks <- c(y_breaks,y_breaks_up)}
y_labs <- format(y_breaks, scientific=FALSE)
y_name <- bquote("call-put difference")
K <- 1
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("data set sample points")
col_2 <- bquote("regression line")
col_3 <- bquote("LOESS curve")
leg_labs <- c(col_1, col_2, col_3)
leg_cols <- c("col_1"="blue", "col_2"="green", "col_3"="red")
leg_ord <- c("col_1", "col_2", "col_3")
Call_Put_Price_Strike_Pr_2023_05_18_06_16_sp <- ggplot2::ggplot(Data_df, aes(x=x, y=y)) +
  geom_smooth(alpha=1, linewidth=0.8, linetype="dashed", aes(color="col_3"),
              method="loess", formula=y ~ x, se=FALSE) +
  geom_smooth(alpha=1, linewidth=0.8, linetype="solid", aes(color="col_2"),
              method="lm" , formula=y ~ x, se=FALSE, fullrange=TRUE) +
  geom_point(alpha=1, size=1.0, shape=19, aes(color="col_1")) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis=sec_axis(~., breaks=y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_ord,
                      guide=guide_legend(override.aes=list(shape=c(19,NA,NA), 
                                                           linetype=c("blank", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x=element_text(angle=0, vjust=1),
        legend.key.width=unit(1.0,"cm"), legend.position="bottom")
plot(Call_Put_Price_Strike_Pr_2023_05_18_06_16_sp)
#
PutCallPrice_par_lm <- lm(y~0+x)
summary(PutCallPrice_par_lm)
#
r_f <- 1/PutCallPrice_par_lm$coefficients[1]-1
show(r_f)
# 8.067738e-05
#
Days_to_Mat <- as.vector(difftime("2023-06-16", "2023-05-18"))
show(Days_to_Mat)
# 29
#
r_f_a=(1+r_f)^(365.2425/Days_to_Mat)-1
show(r_f_a)
# 0.001016572
#
scales::label_percent(accuracy = 0.001)(r_f_a)
# 0.102%
#
##############################################################################################################################
##############################################################################################################################
##############################################################################################################################
# European Options on Standard & Poor 500 (Yahoo Finance - ^SPX)
##############################################################################################################################
# library(quantmod)
# remotes::install_github("joshuaulrich/quantmod")
# remotes::install_github("joshuaulrich/quantmod@407-getoptionchain")
getOptionChain("^SPX", Exp = NULL, src="yahoo")
getOptionChain("^SPX", Exp="2024-07-01", src='yahoo')
SPX_Opt_2023_05_12 <- getOptionChain("^SPX", Exp="2023-05-12", src='yahoo')
class(SPX_Opt_2023_05_12)
length(SPX_Opt_2023_05_12)
show(SPX_Opt_2023_05_12[[1]])
class(SPX_Opt_2023_05_12[[1]])
nrow(SPX_Opt_2023_05_12[[1]])
show(SPX_Opt_2023_05_12[[2]])
class(SPX_Opt_2023_05_12[[2]])
nrow(SPX_Opt_2023_05_12[[2]])
show(SPX_Opt_2023_05_12[[1]]$Strike)
show(SPX_Opt_2023_05_12[[2]]$Strike)
Strike <- sort(union(SPX_Opt_2023_05_12[[1]]$Strike, SPX_Opt_2023_05_12[[2]]$Strike))
show(Strike)
length(Strike)
Call_Indx <- sapply(Strike, function(x) which(SPX_Opt_2023_05_12[[1]]$Strike==x)[1])
Put_Indx <- sapply(Strike, function(x) which(SPX_Opt_2023_05_12[[2]]$Strike==x)[1])

SPX_Opt_2023_05_12_df <- data.frame(Indx=1:length(Strike),
                                    Call_ContractID=SPX_Opt_2023_05_12[[1]]$ContractID[Call_Indx], 
                                    Call_Bid=SPX_Opt_2023_05_12[[1]]$Bid[Call_Indx],
                                    Call_Ask=SPX_Opt_2023_05_12[[1]]$Ask[Call_Indx],
                                    Call_Vol=SPX_Opt_2023_05_12[[1]]$Vol[Call_Indx],
                                    Call_OI=SPX_Opt_2023_05_12[[1]]$OI[Call_Indx],
                                    Call_PrChg=SPX_Opt_2023_05_12[[1]]$Chg[Call_Indx],
                                    Call_PrChgPct=SPX_Opt_2023_05_12[[1]]$ChgPct[Call_Indx],
                                    Call_LastTrTime=SPX_Opt_2023_05_12[[1]]$LastTradeTime[Call_Indx],
                                    Call_LastPr=SPX_Opt_2023_05_12[[1]]$Last[Call_Indx],
                                    Call_ImplVol=SPX_Opt_2023_05_12[[1]]$IV[Call_Indx],
                                    Call_ITM=SPX_Opt_2023_05_12[[1]]$ITM[Call_Indx],
                                    Strike=Strike,
                                    Put_ITM=SPX_Opt_2023_05_12[[2]]$ITM[Put_Indx],
                                    Put_ImplVol=SPX_Opt_2023_05_12[[2]]$IV[Put_Indx],
                                    Put_LastPr=SPX_Opt_2023_05_12[[2]]$Last[Put_Indx],
                                    Put_LastTrTime=SPX_Opt_2023_05_12[[2]]$LastTradeTime[Put_Indx],
                                    Put_PrChgPct=SPX_Opt_2023_05_12[[2]]$ChgPct[Put_Indx],
                                    Put_PrChg=SPX_Opt_2023_05_12[[2]]$Chg[Put_Indx],
                                    Put_OI=SPX_Opt_2023_05_12[[2]]$OI[Put_Indx],
                                    Put_Vol=SPX_Opt_2023_05_12[[2]]$Vol[Put_Indx],
                                    Put_Ask=SPX_Opt_2023_05_12[[2]]$Ask[Put_Indx],
                                    Put_Bid=SPX_Opt_2023_05_12[[2]]$Bid[Put_Indx],
                                    Put_ContractID=SPX_Opt_2023_05_12[[2]]$ContractID[Put_Indx])
head(SPX_Opt_2023_05_12_df,10)                                   
tail(SPX_Opt_2023_05_12_df,10)
write.csv(SPX_Opt_2023_05_12_df,"C:/Users/rober/Documents/My Documents/My Teaching Documents/MPSFM/R-Scripts & Data/Data/SPX_Option_Chain_2023_05_12.csv")
dir("C:/Users/rober/Documents/My Documents/My Teaching Documents/MPSFM/R-Scripts & Data/Data")
write.csv(SPX_Opt_2023_05_12_df,"C:/Users/rober/Documents/My Documents/My Teaching Documents/MPSFM/R-Scripts & Data/Scripts/SPX_Option_Chain_2023_05_12.csv")
dir("C:/Users/rober/Documents/My Documents/My Teaching Documents/MPSFM/R-Scripts & Data/Scripts")
dir()
SPX_Opt_2023_05_12_df <- read.csv("SPX_Opt_2023_05_12_df.csv")

#
Call_LastTrTime_df <- data.frame(as.Date(SPX_Opt_2023_05_12_df$Call_LastTrTime))
class(Call_LastTrTime_df)
head(Call_LastTrTime_df,20)
nrow(Call_LastTrTime_df)
Call_LastTrTime_tb <- table(Call_LastTrTime_df)   
class(Call_LastTrTime_tb)
show(Call_LastTrTime_tb)
#
Put_LastTrTime_df <- data.frame(as.Date(SPX_Opt_2023_05_12_df$Put_LastTrTime))
class(Put_LastTrTime_df)
head(Put_LastTrTime_df,20)
nrow(Put_LastTrTime_df)
Put_LastTrTime_tb <- table(Put_LastTrTime_df)   
class(Put_LastTrTime_tb)
show(Put_LastTrTime_tb)
#
Call_LastTrTime_2023_04_10_Indx <- SPX_Opt_2023_05_12_df$Indx[which(as.Date(SPX_Opt_2023_05_12_df$Call_LastTrTime)=="2023-04-10")]
show(Call_LastTrTime_2023_04_10_Indx)
Put_LastTrTime_2023_04_10_Indx <- SPX_Opt_2023_05_12_df$Indx[which(as.Date(SPX_Opt_2023_05_12_df$Put_LastTrTime)=="2023-04-10")]
show(Put_LastTrTime_2023_04_10_Indx)
Call_Put_2023_04_10_Indx <- intersect(Call_LastTrTime_2023_04_10_Indx, Put_LastTrTime_2023_04_10_Indx)
show(Call_Put_2023_04_10_Indx)
length(Call_Put_2023_04_10_Indx)
#
Call_LastTrTime_2023_04_06_Indx <- SPX_Opt_2023_05_12_df$Indx[which(as.Date(SPX_Opt_2023_05_12_df$Call_LastTrTime)=="2023-04-06")]
show(Call_LastTrTime_2023_04_06_Indx)
Put_LastTrTime_2023_04_06_Indx <- SPX_Opt_2023_05_12_df$Indx[which(as.Date(SPX_Opt_2023_05_12_df$Put_LastTrTime)=="2023-04-06")]
show(Put_LastTrTime_2023_04_06_Indx)
Call_Put_2023_04_06_Indx <- intersect(Call_LastTrTime_2023_04_06_Indx, Put_LastTrTime_2023_04_06_Indx)
show(Call_Put_2023_04_06_Indx)
length(Call_Put_2023_04_06_Indx)
#
Call_LastTrTime_2023_03_31_Indx <- SPX_Opt_2023_05_12_df$Indx[which(as.Date(SPX_Opt_2023_05_12_df$Call_LastTrTime)=="2023-03-31")]
show(Call_LastTrTime_2023_03_31_Indx)
Put_LastTrTime_2023_03_31_Indx <- SPX_Opt_2023_05_12_df$Indx[which(as.Date(SPX_Opt_2023_05_12_df$Put_LastTrTime)=="2023-03-31")]
show(Put_LastTrTime_2023_03_31_Indx)
Call_Put_2023_03_31_Indx <- intersect(Call_LastTrTime_2023_03_31_Indx, Put_LastTrTime_2023_03_31_Indx)
show(Call_Put_2023_03_31_Indx)
length(Call_Put_2023_03_31_Indx)
#
Call_LastTrTime_2023_03_16_Indx <- SPX_Opt_2023_05_12_df$Indx[which(as.Date(SPX_Opt_2023_05_12_df$Call_LastTrTime)=="2023-03-16")]
show(Call_LastTrTime_2023_03_16_Indx)
Put_LastTrTime_2023_03_16_Indx <- SPX_Opt_2023_05_12_df$Indx[which(as.Date(SPX_Opt_2023_05_12_df$Put_LastTrTime)=="2023-03-16")]
show(Put_LastTrTime_2023_03_16_Indx)
Call_Put_2023_03_16_Indx <- intersect(Call_LastTrTime_2023_03_16_Indx, Put_LastTrTime_2023_03_16_Indx)
show(Call_Put_2023_03_16_Indx)
length(Call_Put_2023_03_16_Indx)
#
#
# Put-Call parity
# P_0 = C_0 - S_0 + K/(1+r_f)
# C_0-P_0 = S_0 - K/(1+r_f)
#
x <- SPX_Opt_2023_05_12_df$Strike[Call_Put_2023_04_10_Indx]
show(x)
length(x)
y <- SPX_Opt_2023_05_12_df$Call_LastPr[Call_Put_2023_04_10_Indx]-SPX_Opt_2023_05_12_df$Put_LastPr[Call_Put_2023_04_10_Indx]
show(y)
length(y)
#
#
PutCall_par_lm <- lm(y~x)
summary(PutCall_par_lm)
#
S_0 <- PutCall_par_lm$coefficients[1]
show(S_0)
# SPX Market Price 4,109.11 +4.09 (+0.10%) At close: April 10 04:57PM EDT
#
r_f <- -(1/PutCall_par_lm$coefficients[2]+1)
show(r_f)
r_f_a=(1+r_f)^(365.2425/32)-1
show(r_f_a)
#
# Put-Call parity
# P_0 = C_0 - S_0 + K/(1+r_f)
# C_0-P_0-S_0 = - K/(1+r_f)
#
x <- SPX_Opt_2023_05_12_df$Strike[Call_Put_2023_04_10_Indx]
show(x)
length(x)
y <- SPX_Opt_2023_05_12_df$Call_LastPr[Call_Put_2023_04_10_Indx]-SPX_Opt_2023_05_12_df$Put_LastPr[Call_Put_2023_04_10_Indx]-4109.11
show(y)
length(y)
#
PutCall_par_lm <- lm(y~0+x)
summary(PutCall_par_lm)
r_f <- -(1/PutCall_par_lm$coefficients[1]+1)
show(r_f)
r_f_a=(1+r_f)^(365.2425/32)-1
show(r_f_a)
r_f_a_c <- log(1+r_f_a)
show(r_f_a_c)
##############################################################################################################################

############################## Create data frames of data from Yahoo Finance ########################################
# We consider data on US Treasury Bonds available on Yahoo Finance
# library(xts)
# library(zoo)
# library(TTR)
# library(quantmod)
# Retrieve financial data from https://finance.yahoo.com/
# Treasury bonds - https://finance.yahoo.com/bonds?.tsrc=fin-srch
# ^IRX = 13 Week Treasury Bill
# ^FVX = Treasury Par Yield 5 Years
# ^TNX = Treasury Par Yields 10 Years
# ^TYX = Treasury Par Yield 30 Years

# Set start date
start_date <- Sys.Date()-years(x=1)
# Set end date
end_date <- Sys.Date()
# To evaluate the difference between the dates in terms of days.
difftime(end_date, start_date, units="days")
# To evaluate the difference between the dates in terms of business days.
# library(timeDate)
# help(holidayNYSE)
# library(bizdays)
NYSE_cal  <- create.calendar("UnitedStates/NYSE", holidayNYSE(2020:2022), weekdays=c("saturday", "sunday"))
bizdays(from=start_date, to=end_date, cal=NYSE_cal)

bond_symbols <- c("^IRX", "^FVX", "^TNX", "^TYX")
getSymbols.yahoo(Symbols=bond_symbols, from=start_date, to=end_date, periodicity="daily", 
                 base.currency="USD", env = .GlobalEnv, verbose = TRUE, warning = TRUE, auto.assign = TRUE)

class(IRX)
nrow(IRX)
head(IRX)
tail(IRX)

class(FVX)
nrow(FVX)
head(FVX)
tail(FVX)

class(TNX)
nrow(TNX)
head(TNX)
tail(TNX)

class(TYX)
nrow(TYX)
head(TYX)
tail(TYX)

IRX_df <- as.data.frame(IRX)
class(IRX_df)
IRX_df <- tibble::add_column(IRX_df, Bond="IRX", .before=1)
head(IRX_df)

FVX_df <- as.data.frame(FVX)
class(FVX_df)
FVX_df <- tibble::add_column(FVX_df, Bond="FVX", .before=1)
head(FVX_df)

TNX_df <- as.data.frame(TNX)
class(TNX_df)
TNX_df <- tibble::add_column(TNX_df, Bond="TNX", .before=1)
head(TNX_df)

TYX_df <- as.data.frame(TYX)
class(TYX_df)
TYX_df <- tibble::add_column(TYX_df, Bond="TYX", .before=1)
head(TYX_df)

US_Bonds_Hor_df <- cbind(IRX_df, FVX_df, TNX_df, TYX_df)
head(US_Bonds_Hor_df)
US_Bonds_Hor_df <- tibble::add_column(US_Bonds_Hor_df, Date=rownames(US_Bonds_Hor_df), .before=1)
row.names(US_Bonds_Hor_df) <- NULL
head(US_Bonds_Hor_df)

IRX_mod_df <- tibble::add_column(IRX_df, Date=rownames(IRX_df), .before=1)
colnames(IRX_mod_df) <- c("Date", "Bond", "Open", "High", "Low", "Close", "Volume", "Adjusted")
row.names(IRX_mod_df) <- NULL
head(IRX_mod_df)

FVX_mod_df <- tibble::add_column(FVX_df, Date=rownames(FVX_df), .before=1)
colnames(FVX_mod_df) <- c("Date", "Bond", "Open", "High", "Low", "Close", "Volume", "Adjusted")
row.names(FVX_mod_df) <- NULL
head(FVX_mod_df)

TNX_mod_df <- tibble::add_column(TNX_df, Date=rownames(TNX_df), .before=1)
colnames(TNX_mod_df) <- c("Date", "Bond", "Open", "High", "Low", "Close", "Volume", "Adjusted")
row.names(TNX_mod_df) <- NULL
head(TNX_mod_df)

TYX_mod_df <- tibble::add_column(TYX_df, Date=rownames(TYX_df), .before=1)
colnames(TYX_mod_df) <- c("Date", "Bond", "Open", "High", "Low", "Close", "Volume", "Adjusted")
row.names(TYX_mod_df) <- NULL
head(TYX_mod_df)

US_Bonds_Ver_df <- rbind(IRX_mod_df, FVX_mod_df, TNX_mod_df, TYX_mod_df)
head(US_Bonds_Ver_df)
tail(US_Bonds_Ver_df)

start_date <- Sys.Date()-years(x=1)
# Set end date
end_date <- Sys.Date()
bond_symbols <- c("^IRX", "^FVX", "^TNX", "^TYX")
bond_ids <- c("IRX", "FVX", "TNX", "TYX")
US_Bonds_H_df <- data.frame(matrix(nrow=nrow(IRX), ncol=0))
US_Bonds_V_df <- data.frame(matrix(nrow=0, ncol=(ncol(IRX)+1)))
for(cnt in seq(1,length(bond_symbols))){
   temp_df <- as.data.frame(getSymbols.yahoo(Symbols=bond_symbols[cnt], from=start_date, to=end_date, periodicity="daily", 
                            base.currency="USD", env = .GlobalEnv, verbose = TRUE, warning = TRUE, auto.assign = FALSE))
   temp_df <- tibble::add_column(temp_df, Bond=bond_ids[cnt], .before=1)
   US_Bonds_H_df <- cbind(US_Bonds_H_df, temp_df)
   temp_df <- tibble::add_column(temp_df, Date=rownames(temp_df), .before=1)
   colnames(temp_df) <- c("Date", "Bond", "Open", "High", "Low", "Close", 
                         "Volume", "Adjusted")
   US_Bonds_V_df <- rbind(US_Bonds_V_df, temp_df)
}
US_Bonds_H_df <- tibble::add_column(US_Bonds_H_df, Date=rownames(US_Bonds_H_df), .before=1)
row.names(US_Bonds_H_df) <- NULL
head(US_Bonds_H_df)
row.names(US_Bonds_V_df) <- NULL
head(US_Bonds_V_df,25)
tail(US_Bonds_V_df,25)

#####################################################################################################################

# We build a data frame with the adjusted bond prices and add an Index column

US_Bond_Yield_Rates_df <- data.frame(Date=index(IRX), TB13W=as.vector(IRX$IRX.Adjusted),
                             TN5Yr=as.vector(FVX$FVX.Adjusted), TN10Yr=as.vector(TNX$TNX.Adjusted),
                             TN30Yr=as.vector(TYX$TYX.Adjusted))
US_Bond_Yield_Rates_df <- tibble::add_column(US_Bond_Yield_Rates_df, Index=1:nrow(US_Bond_Yield_Rates_df), .before="Date")
show(US_Bond_Yield_Rates_df[1:15,])

# We draw a plot of the adjusted bond prices.
# The scatter plot
Data_df <- US_Bond_Yield_Rates_df
length <- length(na.omit(Data_df$TB13W))
First_Day <- as.character(xts::first(Data_df$Date))
Last_Day <- as.character(xts::last(Data_df$Date))
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Scatter Plots of US Treasury ret. rates from ", .(First_Day), " to ", .(Last_Day))))
link <- "https://finance.yahoo.com/bonds?.tsrc=fin-srch"
subtitle_content <- bquote(paste("path length ", .(length), " sample points. Dati Yahoo Finance  -  ", .(link)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("dates")
x_breaks_low <- min(Data_df$Index)
x_breaks_up <- max(Data_df$Index)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=50)
x_binwidth <- x_breaks[2]-x_breaks[1]
x_labs <- as.character(Data_df$Date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("treasury ret. rates")
y_breaks_num <- 10
y_bound_low <- min(Data_df$TB13W, Data_df$TN5Yr, Data_df$TN10Yr, Data_df$TN30Yr, na.rm=TRUE)
y_bound_up <- max(Data_df$TB13W, Data_df$TN5Yr, Data_df$TN10Yr, Data_df$TN30Yr, na.rm=TRUE)
y_binwidth <- round((y_bound_up-y_bound_low)/y_breaks_num, digits=3)
y_breaks_low <- floor(y_bound_low/y_binwidth)*y_binwidth
y_breaks_up <- ceiling(y_bound_up/y_binwidth)*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth),3)
y_labs <- scales::label_percent(accuracy = 0.01)(y_breaks)
# y_labs <- paste(format(y_breaks, scientific=FALSE),"%")
K <- 1
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("13 Week Yield Adj. Close")
col_2 <- bquote("05 Years Yield Adj. Close")
col_3 <- bquote("10 Years Yield Adj. Close")
col_4 <- bquote("30 Years Yield Adj. Close")
leg_labs <- c(col_1, col_2, col_3, col_4)
leg_cols <- c("col_1"="red", "col_2"="green", "col_3"="blue", "col_4"="black")
leg_sort <- c("col_1", "col_2", "col_3", "col_4")
US_Bond_Yield_Rates_sp <- ggplot2::ggplot(Data_df) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=TB13W, color="col_1"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=TN5Yr, color="col_2"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=TN10Yr, color="col_3"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=TN30Yr, color="col_4"), na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_sort) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(US_Bond_Yield_Rates_sp)

# The line plot
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Line Plots of US Treasury ret. rates from ", .(First_Day), " to ", .(Last_Day))))
US_Bond_Yield_Rates_lp <- ggplot2::ggplot(na.omit(Data_df)) +
  geom_line(alpha=1, size=0.6, linetype="solid", aes(x=Index, y=TB13W, color="col_1", group=1)) +
  geom_line(alpha=1, size=0.6, linetype="solid", aes(x=Index, y=TN5Yr, color="col_2", group=1)) +
  geom_line(alpha=1, size=0.6, linetype="solid", aes(x=Index, y=TN10Yr, color="col_3", group=1)) +
  geom_line(alpha=1, size=0.6, linetype="solid", aes(x=Index, y=TN30Yr, color="col_4", group=1)) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_sort) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(US_Bond_Yield_Rates_lp)

#####################################################################################################################
# With the goal of investigating the validity of the spot-futures Parity Theorem, we consider some 
# public data sets containing both the spot and the future price of some assets of the financial market.
# Unfortunately, there are limitations to the free availability of this type of data sets. 
# Therefore, our investigation will suffer somehow.

# The website https://www.lbma.org.uk/ operated by the London Bullion Market Association (LBMA) 
# (see https://en.wikipedia.org/wiki/London_Bullion_Market_Association) provides free access 
# to morning and afternoon auction prices of gold, silver, platinum, and palladium 
# both in chart and table form (see https://www.lbma.org.uk/prices-and-data/precious-metal-prices#/).
# In free access data are available only in xml format.

# The website https://www.gold.org/ operated by the WorldGold Council provides free access, 
# upon registration, to many data sets related to gold and silver market 
# (see https://www.gold.org/goldhub/data/gold-prices), 
# among which the LBMA afternoon prices in chart form and also table form (upon registration).

# By using the tables from https://www.gold.org/goldhub/data/gold-prices 
# and https://www.lbma.org.uk/prices-and-data/precious-metal-prices#/ we create the file
# US-Daily-Gold-Spot-Prices-From-2020-04-02-2021-04-01.csv
# Thereafter we load it as data frame
Gold_df <- read.csv("US-Daily-Gold-Spot-Prices-From-2020-04-02-2021-04-01.csv", header=TRUE)
class(Gold_df)
head(Gold_df)
tail(Gold_df)

# We check whether the Date column is in "Date" format. In case it is not, we change the format to "Date".
class(Gold_df$Date)
# library(lubridate)
Gold_df$Date <- as.Date(Gold_df$Date, format="%d/%m/%Y")
class(Gold_df$Date)
head(Gold_df)

# As additional information, we report that t he website Goldprice (see https://goldprice.org) provides charts 
# of the spot(?) prices of gold and silver, and charts of some CFD's, but likely not easily downloadable data.

# The website Oanda (see https://www.oanda.com) provides free access, by means of the dedicated quantmod API 
# to 180 days of CFD's prices of some commodities, for instance gold (XAU), silver (XAG), palladium (XPD), 
# platinum (XPT) (see https://www.rdocumentation.org/packages/quantmod/versions/0.4.18/topics/getMetals).

# library(quantmod)
# Gold_CFD <- getMetals("XAU", from = Sys.Date()-days(x=180), to = Sys.Date(), base.currency="USD",
#                         env = .GlobalEnv, verbose = FALSE, warning = TRUE, auto.assign = FALSE)
# Silver_CFD <- getMetals("XAG", from = Sys.Date()-days(180), to = Sys.Date(), base.currency="USD",
#                         env = .GlobalEnv, verbose = FALSE, warning = TRUE, auto.assign = FALSE)

# The website Yahoo Finance (see https://finance.yahoo.com) provides free access, by means of the dedicated 
# quantmod API, to a large amount of financial data. In particular, we can access to historical 
# data on the future contracts on gold and silver spot price, but, unfortunately, not to historical data
# on the spot prices themselves.

# Also the website MarketWatch (see https://www.marketwatch.com) provides free access to to a large amount 
# of financial data, downloadable as csv files (e.g. see https://www.marketwatch.com/investing/stock/gold).

# Futures on Gold Prices
# Dates
# library(lubridate)
To <- Sys.Date()-days(17)
# The above variable needs to be adjusted in terms of days to download data up to the 1st of April 2021.
From <- To-years(x=1)

# Future on Gold price, maturity April 2021
# library(quantmod)
GCJ21_df <- getSymbols.yahoo("GCJ21.CMX", from=From, to=To, periodicity="daily",
                          base.currency="USD",  return.class="data.frame", env = .GlobalEnv, 
                          verbose = FALSE, warning = TRUE, auto.assign = FALSE)
class(GCJ21_df)
head(GCJ21_df)
tail(GCJ21_df)
# library(tidyverse)
GCJ21_df <- tibble::add_column(GCJ21_df, Index=1:nrow(GCJ21_df), Date=as.Date(row.names(GCJ21_df), format="%Y-%m-%d"), 
                    .before="GCJ21.CMX.Open")
rownames(GCJ21_df) <- NULL
head(GCJ21_df)
class(GCJ21_df$Date)

# Future on Gold price, maturity May 2021
GCK21_df <- getSymbols.yahoo("GCK21.CMX", from=From, to=To, periodicity="daily",
                          base.currency="USD",  return.class="data.frame", env = .GlobalEnv, 
                          verbose = FALSE, warning = TRUE, auto.assign = FALSE)
class(GCK21_df)
head(GCK21_df)
tail(GCK21_df)
GCK21_df <- tibble::add_column(GCK21_df, Index=1:nrow(GCK21_df), Date=as.Date(row.names(GCK21_df), format="%Y-%m-%d"), 
                    .before="GCK21.CMX.Open")
rownames(GCK21_df) <- NULL
head(GCK21_df)
class(GCK21_df$Date)

# Future on Gold price, maturity June 2021
GCM21_df <- getSymbols.yahoo("GCM21.CMX", from=From, to=To, periodicity="daily",
                          base.currency="USD",  return.class="data.frame", env = .GlobalEnv, 
                          verbose = FALSE, warning = TRUE, auto.assign = FALSE)
head(GCM21_df)
tail(GCM21_df)
GCM21_df <- tibble::add_column(GCM21_df, Index=1:nrow(GCM21_df), Date=as.Date(row.names(GCM21_df), format="%Y-%m-%d"), 
                    .before="GCM21.CMX.Open")
rownames(GCM21_df) <- NULL
head(GCM21_df)
class(GCM21_df$Date)

# Future on Gold price, maturity Aug 2021
GCQ21_df <- getSymbols.yahoo("GCQ21.CMX", from=From, to=To, periodicity="daily",
                          base.currency="USD",  return.class="data.frame", env = .GlobalEnv, 
                          verbose = FALSE, warning = TRUE, auto.assign = FALSE)
head(GCQ21_df)
tail(GCQ21_df)
GCQ21_df <- tibble::add_column(GCQ21_df, Index=1:nrow(GCQ21_df), Date=as.Date(row.names(GCQ21_df), format="%Y-%m-%d"), 
                    .before="GCQ21.CMX.Open")
rownames(GCQ21_df) <- NULL
head(GCQ21_df)
class(GCQ21_df$Date)

# Future on Gold price, maturity Oct 2021
GCV21_df <- getSymbols.yahoo("GCV21.CMX", from=From, to=To, periodicity="daily",
                          base.currency="USD",  return.class="data.frame", env = .GlobalEnv, 
                          verbose = FALSE, warning = TRUE, auto.assign = FALSE)
head(GCV21_df)
tail(GCV21_df)
GCV21_df <- tibble::add_column(GCV21_df, Index=1:nrow(GCV21_df), Date=as.Date(row.names(GCV21_df), format="%Y-%m-%d"), 
                    .before="GCV21.CMX.Open")
rownames(GCV21_df) <- NULL
head(GCV21_df)
class(GCV21_df$Date)

# Future on Gold price, maturity Dec 2021
GCZ21_df <- getSymbols.yahoo("GCZ21.CMX", from=From, to=To, periodicity="daily",
                          base.currency="USD",  return.class="data.frame", env = .GlobalEnv, 
                          verbose = FALSE, warning = TRUE, auto.assign = FALSE)
head(GCZ21_df)
tail(GCZ21_df)
GCZ21_df <- tibble::add_column(GCZ21_df, Index=1:nrow(GCZ21_df), Date=as.Date(row.names(GCZ21_df), format="%Y-%m-%d"), 
                    .before="GCZ21.CMX.Open")
rownames(GCZ21_df) <- NULL
head(GCZ21_df)
class(GCZ21_df$Date)

# XAU <- getSymbols.yahoo("XAUUSD=X", from=Sys.Date()-years(x=1), to=Sys.Date(), periodicity="daily",
#                        base.currency="USD", return.class="data.frame", env = .GlobalEnv, 
#                        verbose = FALSE, warning = TRUE, warning = TRUE, auto.assign = FALSE)
# head(XAU)
# tail(XAU)


# Note that except for the future GCK21.CMX all future data frames in the time interval 2020-04-02 - 2021-04-01
# contain 252 observations. However, in the same time interval the Gold_df data frame contains 261 observations.
# Eventually, some holidays, like "2020-12-25", are present in the spot data set, but missed in the future data set.
# Futures are traded by means of the Chicago Mercantile Exchange clearing house (see https://www.cmegroup.com) 
# The CMEGroup holiday calendar is available at https://www.cmegroup.com/tools-information/holiday-calendar.html).
# We want to create a common data frame for future and spot prices. Therefore we need to selct the spot prices
# corresponding to the dates of the futures.
# First, we check whether the indices of all future data frames correspond to the same dates
all(GCJ21_df$Date==GCM21_df$Date)
all(GCJ21_df$Date==GCQ21_df$Date)
all(GCJ21_df$Date==GCV21_df$Date)
all(GCJ21_df$Date==GCZ21_df$Date)
# Second, we select the rows of the vector Gold_df$Date corresponding to same entries as the vector GCJ21_df$Date.
which(Gold_df$Date %in% GCJ21_df$Date)
# We check that whether the selection is correct 
all(Gold_df$Date[which(Gold_df$Date %in% GCJ21_df$Date)]==GCJ21_df$Date)
# Third, we create the desired data frame
Spot_Fut_df <- data.frame(Index=1:nrow(GCJ21_df), Date=GCJ21_df$Date,
                          Spot=Gold_df$USD_Spot[which(Gold_df$Date %in% GCJ21_df$Date)],
                          Apr21_Fut=GCJ21_df$GCJ21.CMX.Adjusted, Jun21_Fut=GCM21_df$GCM21.CMX.Adjusted, 
                          Aug21_Fut=GCQ21_df$GCQ21.CMX.Adjusted, Oct21_Fut=GCV21_df$GCV21.CMX.Adjusted, 
                          Dec21_Fut=GCZ21_df$GCZ21.CMX.Adjusted)
head(Spot_Fut_df)
tail(Spot_Fut_df)

# We add to the Spot_Fut_df the bases of the futures, that is the differences between futures and spot prices.
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Apr21_Bs=Spot_Fut_df$Apr21_Fut-Spot_Fut_df$Spot, .after="Apr21_Fut")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Jun21_Bs=Spot_Fut_df$Jun21_Fut-Spot_Fut_df$Spot, .after="Jun21_Fut")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Aug21_Bs=Spot_Fut_df$Aug21_Fut-Spot_Fut_df$Spot, .after="Aug21_Fut")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Oct21_Bs=Spot_Fut_df$Oct21_Fut-Spot_Fut_df$Spot, .after="Oct21_Fut")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Dec21_Bs=Spot_Fut_df$Dec21_Fut-Spot_Fut_df$Spot, .after="Dec21_Fut")
head(Spot_Fut_df)
tail(Spot_Fut_df)

# Now, we add to the Spot_Fut_df the time to maturity columns for each of the future price column.
# We consider the Gold Futures Calendar to check the settlment dates of the futures
# (see https://www.cmegroup.com/trading/metals/precious/gold_product_calendar_futures.html),
# so that we can add a *Days.to.Maturity", Months.to.Maturity, and *Years.to.Maturity* columns 
Apr21_Fut_DtM <- as.Date("2021-04-28", format="%Y-%m-%d")-Spot_Fut_df$Date
show(Apr21_Fut_DtM)
Apr21_Fut_MtM <- as.numeric(Apr21_Fut_DtM)/30.417
show(Apr21_Fut_MtM)
Apr21_Fut_YtM <- as.numeric(Apr21_Fut_DtM)/365
show(Apr21_Fut_YtM)
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Apr21_Fut_DtM=Apr21_Fut_DtM, Apr21_Fut_MtM=Apr21_Fut_MtM,
                          Apr21_Fut_YtM=Apr21_Fut_YtM, .after="Apr21_Bs")
head(Spot_Fut_df)

Jun21_Fut_DtM <- as.Date("2021-06-28", format="%Y-%m-%d")-Spot_Fut_df$Date
show(Jun21_Fut_DtM)
Jun21_Fut_MtM <- as.numeric(Jun21_Fut_DtM)/30.417
show(Jun21_Fut_MtM)
Jun21_Fut_YtM <- as.numeric(Jun21_Fut_DtM)/365
show(Jun21_Fut_YtM)
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Jun21_Fut_DtM=Jun21_Fut_DtM, Jun21_Fut_MtM=Jun21_Fut_MtM,
                          Jun21_Fut_YtM=Jun21_Fut_YtM, .after="Jun21_Bs")
head(Spot_Fut_df)

Aug21_Fut_DtM <- as.Date("2021-08-27", format="%Y-%m-%d")-Spot_Fut_df$Date
show(Aug21_Fut_DtM)
Aug21_Fut_MtM <- as.numeric(Aug21_Fut_DtM)/30.417
show(Aug21_Fut_MtM)
Aug21_Fut_YtM <- as.numeric(Aug21_Fut_DtM)/365
show(Aug21_Fut_YtM)
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Aug21_Fut_DtM=Aug21_Fut_DtM, Aug21_Fut_MtM=Aug21_Fut_MtM,
                          Aug21_Fut_YtM=Aug21_Fut_YtM, .after="Aug21_Bs")
head(Spot_Fut_df)

Oct21_Fut_DtM <- as.Date("2021-10-27", format="%Y-%m-%d")-Spot_Fut_df$Date
show(Oct21_Fut_DtM)
Oct21_Fut_MtM <- as.numeric(Oct21_Fut_DtM)/30.417
show(Oct21_Fut_MtM)
Oct21_Fut_YtM <- as.numeric(Oct21_Fut_DtM)/365
show(Oct21_Fut_YtM)
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Oct21_Fut_DtM=Oct21_Fut_DtM, Oct21_Fut_MtM=Oct21_Fut_MtM,
                          Oct21_Fut_YtM=Oct21_Fut_YtM, .after="Oct21_Bs")
head(Spot_Fut_df)

Dec21_Fut_DtM <- as.Date("2021-12-29", format="%Y-%m-%d")-Spot_Fut_df$Date
show(Dec21_Fut_DtM)
Dec21_Fut_MtM <- as.numeric(Dec21_Fut_DtM)/30.417
show(Dec21_Fut_MtM)
Dec21_Fut_YtM <- as.numeric(Dec21_Fut_DtM)/365
show(Dec21_Fut_YtM)
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Dec21_Fut_DtM=Dec21_Fut_DtM, Dec21_Fut_MtM=Dec21_Fut_MtM,
                          Dec21_Fut_YtM=Dec21_Fut_YtM, .after="Dec21_Bs")
head(Spot_Fut_df)

# In addition, we compute the risk free return associated to the time to maturity according to the formula
# $F_{t,T} = \left(1+r_{t,T}\right)S_{t}$,
# where $S_{t}$ is the gold spot price at time $t$,
# $F_{t,T}$ is the future price of gold at time $t$ for delivery at date $T$, 
# $r_{t,T}$ is the risk free rate of return from $t$ to the delivery date $T$,
# The above formula yields
# $r_{t,T} = \frac{F_{t,T}},{S_{t}}-1$

Apr21_RR <- Spot_Fut_df$Apr21_Fut/Spot_Fut_df$Spot -1
Jun21_RR <- Spot_Fut_df$Jun21_Fut/Spot_Fut_df$Spot -1
Aug21_RR <- Spot_Fut_df$Aug21_Fut/Spot_Fut_df$Spot -1
Oct21_RR <- Spot_Fut_df$Oct21_Fut/Spot_Fut_df$Spot -1
Dec21_RR <- Spot_Fut_df$Dec21_Fut/Spot_Fut_df$Spot -1

Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Apr21_RR=Apr21_RR, .after="Apr21_Fut_YtM")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Jun21_RR=Jun21_RR, .after="Jun21_Fut_YtM")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Aug21_RR=Aug21_RR, .after="Aug21_Fut_YtM")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Oct21_RR=Oct21_RR, .after="Oct21_Fut_YtM")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Dec21_RR=Dec21_RR, .after="Dec21_Fut_YtM")

head(Spot_Fut_df)

# We compute the annual rate of return according to the formula
# (1+r_A)^t=1+r_M; r_A=(1+r_M)^(1/t)-1
# where r_A=annual rate of return, t=time to maturity (in years), r_M=rate of return in the period t.
Apr21_ARR <-((1+Apr21_RR)^(1/Apr21_Fut_YtM)-1)
Jun21_ARR <-((1+Jun21_RR)^(1/Jun21_Fut_YtM)-1)
Aug21_ARR <-((1+Aug21_RR)^(1/Aug21_Fut_YtM)-1)
Oct21_ARR <-((1+Oct21_RR)^(1/Oct21_Fut_YtM)-1)
Dec21_ARR <-((1+Dec21_RR)^(1/Dec21_Fut_YtM)-1)

# We represent the annual rate of return in percentage form
# library(scales)
Apr21_Perc_ARR <- scales::label_percent(accuracy = 0.01)(Apr21_ARR)
Jun21_Perc_ARR <- scales::label_percent(accuracy = 0.01)(Jun21_ARR)
Aug21_Perc_ARR <- scales::label_percent(accuracy = 0.01)(Aug21_ARR)
Oct21_Perc_ARR <- scales::label_percent(accuracy = 0.01)(Oct21_ARR)
Dec21_Perc_ARR <- scales::label_percent(accuracy = 0.01)(Dec21_ARR)

Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Apr21_ARR=Apr21_ARR, Apr21_Perc_ARR=Apr21_Perc_ARR, .after="Apr21_RR")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Jun21_ARR=Jun21_ARR, Jun21_Perc_ARR=Jun21_Perc_ARR, .after="Jun21_RR")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Aug21_ARR=Aug21_ARR, Aug21_Perc_ARR=Aug21_Perc_ARR, .after="Aug21_RR")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Oct21_ARR=Oct21_ARR, Oct21_Perc_ARR=Oct21_Perc_ARR, .after="Oct21_RR")
Spot_Fut_df <- tibble::add_column(Spot_Fut_df, Dec21_ARR=Dec21_ARR, Dec21_Perc_ARR=Dec21_Perc_ARR, .after="Dec21_RR")

head(Spot_Fut_df)
tail(Spot_Fut_df)

# We draw a plot of spot and future prices

# The scatter plot
Data_df <- Spot_Fut_df
length <- length(na.omit(Data_df$Spot))
First_Day <- as.character(xts::first(Data_df$Date))
Last_Day <- as.character(xts::last(Data_df$Date))
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Scatter Plots of Gold and Futures Spot Prices from ", .(First_Day), " to ", .(Last_Day))))
link_1 <- "https://www.lbma.org.uk"
link_2 <- "https://finance.yahoo.com"
subtitle_content <- bquote(paste("Path length ", .(length), " sample points. Data from LBMA - ", .(link_1), " and Yahoo Finance  -  ", .(link_2)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("dates")
x_breaks_low <- min(Data_df$Index)
x_breaks_up <- max(Data_df$Index)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=50)
x_binwidth <- x_breaks[2]-x_breaks[1]
x_labs <- as.character(Data_df$Date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("spot and future prices")
y_breaks_num <- 10
y_bound_low <- min(Data_df$Spot, Data_df$Apr21_Fut, Data_df$Jun21_Fut, Data_df$Aug21_Fut, Data_df$Oct21_Fut, Data_df$Dec21_Fut, na.rm=TRUE)
y_bound_up <- max(Data_df$Spot, Data_df$Apr21_Fut, Data_df$Jun21_Fut, Data_df$Aug21_Fut, Data_df$Oct21_Fut, Data_df$Dec21_Fut, na.rm=TRUE)
y_binwidth <- round((y_bound_up-y_bound_low)/y_breaks_num, digits=3)
y_breaks_low <- floor(y_bound_low/y_binwidth)*y_binwidth
y_breaks_up <- ceiling(y_bound_up/y_binwidth)*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth),3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("Gold Spot Price")
col_2 <- bquote("Gold Apr. 21 Fut. Price")
col_3 <- bquote("Gold Jun. 21 Fut. Price")
col_4 <- bquote("Gold Aug. 21 Fut. Price")
y5_col <- bquote("Gold Oct. 21 Fut. Price")
y6_col <- bquote("Gold Dec. 21 Fut. Price")
leg_labs <- c(col_1, col_2, col_3, col_4, y5_col, y6_col)
leg_cols <- c("col_1"="red", "col_2"="green", "col_3"="blue", "col_4"="black", y5_col="magenta", y6_col="brown")
leg_sort <- c("col_1", "col_2", "col_3", "col_4", "y5_col", "y6_col")
Gold_Spot_Fut_Prices_sp <- ggplot2::ggplot(Data_df) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Spot, color="col_1"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Apr21_Fut, color="col_2"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Jun21_Fut, color="col_3"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Aug21_Fut, color="col_4"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Oct21_Fut, color="y5_col"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Dec21_Fut, color="y6_col"), na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_sort) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Fut_Prices_sp)

# The line plot
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Line Plots of Gold and Futures Spot Prices from ", .(First_Day), " to ", .(Last_Day))))
Gold_Spot_Fut_Prices_lp <- ggplot2::ggplot(Data_df) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Spot, color="col_1", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Apr21_Fut, color="col_2", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Jun21_Fut, color="col_3", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Aug21_Fut, color="col_4", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Oct21_Fut, color="y5_col", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Dec21_Fut, color="y6_col", group=1)) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_sort) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Fut_Prices_lp)

# We draw a plot of the bases of spot and future prices

Data_df <- Spot_Fut_df
length <- length(na.omit(Data_df$Spot))
First_Day <- as.character(xts::first(Data_df$Date))
Last_Day <- as.character(xts::last(Data_df$Date))
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Scatter Plots of Gold Future Bases from ", .(First_Day), " to ", .(Last_Day))))
link_1 <- "https://www.lbma.org.uk"
link_2 <- "https://finance.yahoo.com"
subtitle_content <- bquote(paste("Path length ", .(length), " sample points. Data from LBMA - ", .(link_1), " and Yahoo Finance  -  ", .(link_2)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("dates")
x_breaks_low <- min(Data_df$Index)
x_breaks_up <- max(Data_df$Index)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=50)
x_binwidth <- x_breaks[2]-x_breaks[1]
x_labs <- as.character(Data_df$Date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("spot and future prices")
y_breaks_num <- 10
y_bound_low <- min(0, Data_df$Apr21_Bs, Data_df$Jun21_Bs, Data_df$Aug21_Bs, Data_df$Oct21_Bs, 
                   Data_df$Dec21_Bs, na.rm=TRUE)
y_bound_up <- max(0, Data_df$Apr21_Bs, Data_df$Jun21_Bs, Data_df$Aug21_Bs, Data_df$Oct21_Bs, 
                  Data_df$Dec21_Bs, na.rm=TRUE)
y_binwidth <- round((y_bound_up-y_bound_low)/y_breaks_num, digits=3)
y_breaks_low <- floor(y_bound_low/y_binwidth)*y_binwidth
y_breaks_up <- ceiling(y_bound_up/y_binwidth)*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth),3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("Reference Line")
col_2 <- bquote("Fut. Apr. 21 Basis")
col_3 <- bquote("Fut. Jun. 21 Basis")
col_4 <- bquote("Fut. Aug. 21 Basis")
y5_col <- bquote("Fut. Oct. 21 Basis")
y6_col <- bquote("Fut. Dec. 21 Basis")
leg_0_lab <- col_1
leg_0_col <- c("col_1"="red")
leg_0_line_type <- c("y_1_col"="solid")
leg_labs <- c(col_2, col_3, col_4, y5_col, y6_col)
leg_cols <- c("col_2"="green", "col_3"="blue", "col_4"="black", y5_col="magenta", y6_col="brown")
leg_sort <- c("col_2", "col_3", "col_4", "y5_col", "y6_col")
Gold_Spot_Fut_Bases_sp <- ggplot2::ggplot(Data_df) +
  geom_line(alpha=1, size=0.5, color="red", aes(x=Index, y=0, linetype="y_1_col", group=1)) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Apr21_Bs, color="col_2"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Jun21_Bs, color="col_3"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Aug21_Bs, color="col_4"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Oct21_Bs, color="y5_col"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Dec21_Bs, color="y6_col"), na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1)) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, 
                                         override.aes=list(linetype=c("blank", "blank", "blank", "blank", "blank"),
                                                           shape = c(16, 16, 16, 16, 16)))) +
  guides(linetype=guide_legend(order=1), colour=guide_legend(order=2)) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Fut_Bases_sp)

# The line plot
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Line Plots of Gold Future Bases from ", .(First_Day), " to ", .(Last_Day))))
Gold_Spot_Fut_Bases_lp <- ggplot2::ggplot(na.omit(Data_df)) +
  geom_line(alpha=1, size=0.5, color="red", aes(x=Index, y=0, linetype="y_1_col", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Apr21_Bs, color="col_2", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Jun21_Bs, color="col_3", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Aug21_Bs, color="col_4", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Oct21_Bs, color="y5_col", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Dec21_Bs, color="y6_col", group=1)) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort) +
  guides(linetype=guide_legend(order=1), colour=guide_legend(order=2)) +
    theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Fut_Bases_lp)

# We reconsider the plot of the basis of future with maturity on April and December the 29th. 

# April the 29th

Data_df <- Spot_Fut_df
length <- length(na.omit(Data_df$Spot))
First_Day <- as.character(xts::first(Data_df$Date))
Last_Day <- as.character(xts::last(Data_df$Date))
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Scatter Plot of April 2021 Gold Future Basis from ", .(First_Day), " to ", .(Last_Day))))
link_1 <- "https://www.lbma.org.uk"
link_2 <- "https://finance.yahoo.com"
subtitle_content <- bquote(paste("Path length ", .(length), " sample points. Data from LBMA - ", .(link_1), " and Yahoo Finance  -  ", .(link_2)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("dates")
x_breaks_low <- min(Data_df$Index)
x_breaks_up <- max(Data_df$Index)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=50)
x_binwidth <- x_breaks[2]-x_breaks[1]
x_labs <- as.character(Data_df$Date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("spot and future prices")
y_breaks_num <- 10
y_bound_low <- min(0, Data_df$Apr21_Bs, na.rm=TRUE)
y_bound_up <- max(0, Data_df$Apr21_Bs, na.rm=TRUE)
y_binwidth <- round((y_bound_up-y_bound_low)/y_breaks_num, digits=3)
y_breaks_low <- floor(y_bound_low/y_binwidth)*y_binwidth
y_breaks_up <- ceiling(y_bound_up/y_binwidth)*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth),3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("Reference Line")
col_2 <- bquote("Fut. Apr. 21 Basis")
col_3 <- bquote("Regression Line")
col_4 <- bquote("LOESS Curve")
leg_0_lab <- col_1
leg_0_col <- c("col_1"="red")
leg_0_line_type <- c("y_1_col"="solid")
leg_labs <- c(col_2, col_3, col_4)
leg_cols <- c("col_2"="green", "col_3"="blue", "col_4"="black")
leg_sort <- c("col_2", "col_3", "col_4")
Gold_Spot_Apr_21_Fut_Basis_sp <- ggplot2::ggplot(Data_df) +
  geom_line(alpha=1, size=0.5, color="red", aes(x=Index, y=0, linetype="y_1_col", group=1)) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Apr21_Bs, color="col_2"), na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=Apr21_Bs, color="col_3"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=Apr21_Bs, color="col_4"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1)) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("blank", "solid", "dashed"),
                                                           shape = c(16, NA, NA)))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Apr_21_Fut_Basis_sp)

# The line plot

title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Line Plot of April 2021 Gold Future Basis from ", .(First_Day), " to ", .(Last_Day))))
Gold_Spot_Apr_21_Fut_Basis_lp <- ggplot2::ggplot(na.omit(Data_df)) +
  geom_line(alpha=1, size=0.5, color="red", aes(x=Index, y=0, linetype="y_1_col", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Apr21_Bs, color="col_2", group=1)) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=Apr21_Bs, color="col_3"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=Apr21_Bs, color="col_4"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1)) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("solid", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Apr_21_Fut_Basis_lp)


# December the 29th

Data_df <- Spot_Fut_df
length <- length(na.omit(Data_df$Spot))
First_Day <- as.character(xts::first(Data_df$Date))
Last_Day <- as.character(xts::last(Data_df$Date))
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Scatter Plot of December 2021 Gold Future Basis from ", .(First_Day), " to ", .(Last_Day))))
link_1 <- "https://www.lbma.org.uk"
link_2 <- "https://finance.yahoo.com"
subtitle_content <- bquote(paste("Path length ", .(length), " sample points. Data from LBMA - ", .(link_1), " and Yahoo Finance  -  ", .(link_2)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("dates")
x_breaks_low <- min(Data_df$Index)
x_breaks_up <- max(Data_df$Index)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=50)
x_binwidth <- x_breaks[2]-x_breaks[1]
x_labs <- as.character(Data_df$Date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("spot and future prices")
y_breaks_num <- 10
y_bound_low <- min(0, Data_df$Dec21_Bs, na.rm=TRUE)
y_bound_up <- max(0, Data_df$Dec21_Bs, na.rm=TRUE)
y_binwidth <- round((y_bound_up-y_bound_low)/y_breaks_num, digits=3)
y_breaks_low <- floor(y_bound_low/y_binwidth)*y_binwidth
y_breaks_up <- ceiling(y_bound_up/y_binwidth)*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth),3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("Reference Line")
y5_col <- bquote("Gold Dec. 21 Basis")
col_3 <- bquote("Regression Line")
col_4 <- bquote("LOESS Curve")
leg_0_lab <- col_1
leg_0_col <- c("col_1"="red")
leg_0_line_type <- c("y_1_col"="solid")
leg_labs <- c(y5_col, col_3, col_4)
leg_cols <- c(y5_col="magenta", "col_3"="blue", "col_4"="black")
leg_sort <- c("y5_col", "col_3", "col_4")
Gold_Spot_Dec_21_Fut_Basis_sp <- ggplot2::ggplot(Data_df) +
  geom_line(alpha=1, size=0.5, color="red", aes(x=Index, y=0, linetype="y_1_col", group=1)) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Apr21_Bs, color="y5_col"), na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=Dec21_Bs, color="col_3"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=Dec21_Bs, color="col_4"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1))  +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("blank", "solid", "dashed"),
                                                           shape = c(16, NA, NA)))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Dec_21_Fut_Basis_sp)

# The line plot

title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Line Plot of December 2021 Gold Future Basis from ", .(First_Day), " to ", .(Last_Day))))
Gold_Spot_Dec_21_Fut_Basis_lp <- ggplot2::ggplot(na.omit(Data_df)) +
  geom_line(alpha=1, size=0.5, color="red", aes(x=Index, y=0, linetype="y_1_col", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Dec21_Bs, color="y5_col", group=1)) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=Dec21_Bs, color="col_3"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=Dec21_Bs, color="col_4"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1)) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("solid", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Dec_21_Fut_Basis_lp)


# We compare the two plots

Data_df <- Spot_Fut_df
length <- length(na.omit(Data_df$Spot))
First_Day <- as.character(xts::first(Data_df$Date))
Last_Day <- as.character(xts::last(Data_df$Date))
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Scatter Plot of April and December 2021 Gold Future Basis from ", .(First_Day), " to ", .(Last_Day))))
link_1 <- "https://www.lbma.org.uk"
link_2 <- "https://finance.yahoo.com"
subtitle_content <- bquote(paste("Path length ", .(length), " sample points. Data from LBMA - ", .(link_1), " and Yahoo Finance  -  ", .(link_2)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("dates")
x_breaks_low <- min(Data_df$Index)
x_breaks_up <- max(Data_df$Index)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=50)
x_binwidth <- x_breaks[2]-x_breaks[1]
x_labs <- as.character(Data_df$Date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("spot and future prices")
y_breaks_num <- 10
y_bound_low <- min(0, Data_df$Dec21_Bs, na.rm=TRUE)
y_bound_up <- max(0, Data_df$Dec21_Bs, na.rm=TRUE)
y_binwidth <- round((y_bound_up-y_bound_low)/y_breaks_num, digits=3)
y_breaks_low <- floor(y_bound_low/y_binwidth)*y_binwidth
y_breaks_up <- ceiling(y_bound_up/y_binwidth)*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth),3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("Reference Line")
col_2 <- bquote("Fut. Apr. 21 Basis")
col_3 <- bquote("Fut. Dec. 21 Basis")
col_4 <- bquote("Fut. Apr. 21 Regression Line")
y5_col <- bquote("Fut. Dec. 21 Regression Line")
y6_col <- bquote("Fut. Apr. 21 LOESS Curve")
y7_col <- bquote("Fut. Dec. 21 LOESS Curve")
leg_0_lab <- col_1
leg_0_col <- c("col_1"="red")
leg_0_line_type <- c("y_1_col"="solid")
leg_labs <- c(col_2, col_3, col_4, y5_col, y6_col, y7_col)
leg_cols <- c("col_2"="green", "col_3"="blue", "col_4"="black", 
              "y5_col"="brown", "y6_col"="magenta", "y7_col"="grey50")
leg_sort <- c("col_2", "y5_col", "col_3", "y6_col", "col_4", "y7_col")
Gold_Spot_Apr_Dec_21_Fut_Basis_sp <- ggplot2::ggplot(Data_df) +
  geom_line(alpha=1, size=0.5, color="red", aes(x=Index, y=0, linetype="y_1_col", group=1)) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Apr21_Bs, color="col_2"), na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=Apr21_Bs, color="col_3"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=Apr21_Bs, color="col_4"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Dec21_Bs, color="y5_col"), na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=Dec21_Bs, color="y6_col"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=Dec21_Bs, color="y7_col"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1)) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("blank", "blank", "solid", "solid", "dashed", "dashed"),
                                                           shape = c(16, 16, NA, NA, NA, NA)))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Apr_Dec_21_Fut_Basis_sp)

# The line plot

title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Line Plot of April and December 2021 Gold Future Basis from ", .(First_Day), " to ", .(Last_Day))))
Gold_Spot_Apr_Dec_21_Fut_Basis_lp <- ggplot2::ggplot(na.omit(Data_df)) +
  geom_line(alpha=1, size=0.5, color="red", aes(x=Index, y=0, linetype="y_1_col", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Apr21_Bs, color="col_2", group=1)) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=Apr21_Bs, color="col_3"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=Apr21_Bs, color="col_4"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Dec21_Bs, color="y5_col", group=1)) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=Dec21_Bs, color="y6_col"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=Dec21_Bs, color="y7_col"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1)) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("solid", "solid", "solid", "solid", "dashed", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Gold_Spot_Apr_Dec_21_Fut_Basis_lp)

# At the beginning of the time series of gold spot prices and futures, we can observe the so called "contango" 
# pricing structure: the bases are clearly positive, that is future prices are constantly higer than spot prices.
# According to the formula $F_{t,T} = \left(1+r_{t,T}\right)S_{t}$, future prices should actually be higher than 
# spot prices. However, considering the very low risk free return rate in the period that we are considering,
# the difference is much higher than expected. 
# The terms which might be responsible for the high difference are carrying costs. 
# Carrying costs are the storage costs, the insurance costs and other types of costs
# that the seller of the future contract incurrs from the sale date to the delivery date of the commodity.
# Nevertheless, carrying cost cannot explain the variability of the difference.
# Such a variability suggests the presence of noise in the future market. 
# Furthermore, the rather good synchronization between futures with different delivery dates suggests that 
# this noise should be due mainly to uncertainty about future expectations.
# Note that at the end of the time series the relevance of the carrying cost clearly decreases and the erraticity of
# future expectations can lead the bases below the zero level.

# We draw also a plot of the supposed risk free rates

# The scatter plot
Data_df <- Spot_Fut_df
length <- length(na.omit(Data_df$Spot))
First_Day <- as.character(xts::first(Data_df$Date))
Last_Day <- as.character(xts::last(Data_df$Date))
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Scatter Plots of Annual Risk Free Rates of Return by Gold and Futures Spot Prices Naive Formula from ", .(First_Day), " to ", .(Last_Day))))
link_1 <- "https://www.lbma.org.uk"
link_2 <- "https://finance.yahoo.com"
subtitle_content <- bquote(paste("Path length ", .(length), " sample points. Data from LBMA - ", .(link_1), " and Yahoo Finance  -  ", .(link_2)))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("dates")
x_breaks_low <- min(Data_df$Index)
x_breaks_up <- max(Data_df$Index)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=50)
x_binwidth <- x_breaks[2]-x_breaks[1]
x_labs <- as.character(Data_df$Date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("risk free return rate")
y_breaks_num <- 10
y_bound_low <- min(Data_df$Apr21_ARR, Data_df$Jun21_ARR, Data_df$Aug21_ARR, Data_df$Oct21_ARR, Data_df$Dec21_ARR, na.rm=TRUE)
y_bound_up <- max(Data_df$Apr21_ARR, Data_df$Jun21_ARR, Data_df$Aug21_ARR, Data_df$Oct21_ARR, Data_df$Dec21_ARR, na.rm=TRUE)
y_binwidth <- round((y_bound_up-y_bound_low)/y_breaks_num, digits=3)
y_breaks_low <- floor(y_bound_low/y_binwidth)*y_binwidth
y_breaks_up <- ceiling(y_bound_up/y_binwidth)*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth),3)
# y_breaks <- seq(from=y_bound_low, to=y_bound_up, length.out=y_breaks_num)
y_labs <- scales::label_percent(accuracy = 0.01)(y_breaks)
K <- 0
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("Apr21 Perc ARR")
col_2 <- bquote("Jun21 Perc ARR")
col_3 <- bquote("Aug21 Perc ARR")
col_4 <- bquote("Oct21 Perc ARR")
y5_col <- bquote("Dec21 Perc ARR")
leg_labs <- c(col_1, col_2, col_3, col_4, y5_col)
leg_cols <- c("col_1"="red", "col_2"="green", "col_3"="blue", "col_4"="black", y5_col="magenta")
leg_sort <- c("col_1", "col_2", "col_3", "col_4", "y5_col")
Annual_Risk_Free_Rates_sp <- ggplot2::ggplot(Data_df) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Apr21_ARR, color="col_1"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Jun21_ARR, color="col_2"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Aug21_ARR, color="col_3"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Oct21_ARR, color="col_4"), na.rm=TRUE) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=Dec21_ARR, color="y5_col"), na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_sort) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Annual_Risk_Free_Rates_sp)

# The line plot
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Line Plots of Annual Risk Free Rates of Return by Gold and Futures Spot Prices Naive Formula from ", .(First_Day), " to ", .(Last_Day))))
Annual_Risk_Free_Rates_lp <- ggplot2::ggplot(na.omit(Data_df)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Apr21_ARR, color="col_1", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Jun21_ARR, color="col_2", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Aug21_ARR, color="col_3", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Oct21_ARR, color="col_4", group=1)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=Dec21_ARR, color="y5_col", group=1)) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_colour_manual(name="Legend", labels=leg_labs, values=leg_cols, breaks=leg_sort) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Annual_Risk_Free_Rates_lp)

# A more accurate formula for the relationship between future and spot prices prescribes that
# $F_{t,T} = \left(1+r_{t,T}\right)S_{t}-\left(\gamma_{t,T}-\kappa_{t,T}\right)$,
# where $\gamma_{t,T}$ is the capitalized flow of the marginal convenience yield for holding the commodity over 
# the period from $t$ to $T$, and $\kappa_{t,T}$ is the per-unit cost of physical storage from $t$ to $T$.

# Assume we have two futures at $t$ with delivery dates $T_{1}$ and $T_{2}$, where $T_{2}>T_{1}$. 
# We can write
# \[
# F_{t,T_{j}}=\left(1+r_{t,T_{j}}\right)S_{t}-\left(\gamma_{t,T_{j}}-\kappa_{t,T_{j}}\right),\quad j=1,2.
# \]
# Assume that
# \[
# \kappa_{t,T_{j}}\equiv\kappa\left(T_{j}-t\right),\quad j=1,2,
#  \]
# for some constant $\kappa>0$. Assume also that
# \[
#  r_{t,T_{j}}\equiv e^{\rho\left(T_{j}-t\right)}-1,\quad j=1,2,
#  \]
# where
# \[
# \rho\equiv\log\left(1+r_{a}\right),
# \]
# is the continuous time annual risk free rate equivalent to a constant annual risk free rate $r_{a}$, that is
# \[
#  \left(1+r_{a}\right)^{t}=e^{\rho\left(t\right)},
# \]
# where $t$ is expressed in years. In the end, assume that
# \[
#  \gamma_{t,T_{j}}\equiv\gamma\left(T_{j}-t\right),\quad j=1,2,
#  \]
# for some constant $\gamma>0$. We can write
# \[
#  F_{t,T_{j}}=e^{\rho\left(T_{j}-t\right)}S_{t}
# -\left(\gamma-\kappa\right)\left(T_{j}-t\right),\quad j=1,2.
#  \]
# Therefore,
# \begin{align*}
# F_{t,T_{2}}-F_{t,T_{1}} & =\left(e^{\rho\left(T_{2}-t\right)}
# -e^{\rho\left(T_{1}-t\right)}\right)S_{t}-\left(\gamma-\kappa\right)\left(T_{2}-T_{1}\right)\\
# & =\left(1-e^{-\rho\left(T_{2}-T_{1}\right)}\right)e^{\rho\left(T_{2}-t\right)}S_{t}
# -\left(\gamma-\kappa\right)\left(T_{2}-T_{1}\right)
# \end{align*}
# Setting
# \[
#  F_{t,T_{2}}-F_{t,T_{1}}\equiv F_{t}
# \]
# we have
# \[
# F_{t}=\left(1-e^{-\rho\left(T_{2}-T_{1}\right)}\right)e^{\rho\left(T_{2}-t\right)}S_{t}
# -\left(\gamma-\kappa\right)\left(T_{2}-T_{1}\right).
# \]
# Hence,
# \begin{align*}
# F_{t+1}-F_{t}  
# &=e^{\rho\left(T_{2}-\left(t+1\right)\right)}\left(1-e^{-\rho\left(T_{2}-T_{1}\right)}\right)S_{t+1}
# -e^{\rho\left(T_{2}-t\right)}\left(1-e^{-\rho\left(T_{2}-T_{1}\right)}\right)S_{t}\\
# & =\left(1-e^{-\rho\left(T_{2}-T_{1}\right)}\right)
# \left(e^{\rho\left(T_{2}-\left(t+1\right)\right)}S_{t+1}-e^{\rho\left(T_{2}-t\right)}S_{t}\right)\\
# & =\left(1-e^{-\rho\left(T_{2}-T_{1}\right)}\right)e^{\rho\left(T_{2}-t\right)}
# \left(  e^{-\rho}S_{t+1}-S_{t}\right).
# \end{align*}

# In the end, we can hope to estimate $\rho$ by a non linear regression. 

#####################################################################################################################
# We create a suitable data frame to study the first regression.

F <- Spot_Fut_df$Dec21_Fut-Spot_Fut_df$Apr21_Fut
Diff_T <- Spot_Fut_df$Dec21_Fut_YtM-Spot_Fut_df$Apr21_Fut_YtM
S <- Spot_Fut_df$S
NL_Regr_df <- data.frame(Index=Spot_Fut_df$Index, Date=Spot_Fut_df$Date, t=Spot_Fut_df$Dec21_Fut_YtM, 
                         S=Spot_Fut_df$Spot, F=F)
head(NL_Regr_df)

Est_df <- na.exclude(NL_Regr_df)
Est_Par <- vector(mode="list", length=0)
SUCCESS_def_df <- data.frame(matrix(nrow=0, ncol=8))
SUCCESS_def_df <-  rename(SUCCESS_def_df, try_num=X1, init_r=X2, init_K=X3, RSE=X4, AIC=X5, BIC=X6, fin_r=X7, fin_K=X8)
# Res_SUCCESS_def_df <- data.frame(matrix(nrow=nrow(Est_df), ncol=0))
Res_SUCCESS_def_df <- data.frame(Index=1:nrow(Est_df),Date=Est_df$Date)
con <- file("estimate.log")
sink(con, append=TRUE, type=c("output","message"), split=TRUE)
# library(nlstools)
for(n in 1:100){
  tryCatch(
    expr={
      init_r=runif(1, min=0,max=0.1)
      init_K=runif(1, min=-100,max=1000)
      print(n)
      show(c(round(init_r,4), round(init_K,4)))
      NLS_Est <- nls(F ~ exp(r*t)*(1-exp(-r*Diff_T[1]))*S-K*Diff_T[1], data=Est_df, 
                    start=list(r=init_r, K=init_K), trace=TRUE, algorithm="default", 
                    control=list(maxiter = 1000, tol = 1e-06))
      message("SUCCESS!")
      Est_Par[[length(Est_Par)+1]] <- NLS_Est
      SUCCESS_def_df[nrow(SUCCESS_def_df)+1,] <- c(n, init_r, init_K, 
                                         summary(NLS_Est)$sigma, AIC(NLS_Est), BIC(NLS_Est),
                                         summary(NLS_Est)$coefficients[1, 1], summary(NLS_Est)$coefficients[2, 1])
      Res_SUCCESS_def_df[,ncol(Res_SUCCESS_def_df)+1] <- nlsResiduals(NLS_Est)$resi1[,2]
    }, error=function(e){cat("ERROR: ", conditionMessage(e), "\n")})
}
sink()
print(SUCCESS_def_df)
print(Res_SUCCESS_def_df)
write.csv(SUCCESS_def_df, "Success.csv", row.names=FALSE)
write.csv(Res_SUCCESS_def_df, "Res_Succes.csv", row.names=FALSE)

#####################################################################################################################
# We plot the residuals of the regression
# The scatter plot
Data_df <- Res_SUCCESS_def_df
length <- length(na.omit(Data_df$V3))
First_Day <- as.character(xts::first(Data_df$Date))
Last_Day <- as.character(xts::last(Data_df$Date))
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Scatter Plot of the Residuals from the Non Linear Estimate of the Risk Free Rate from ", .(First_Day), " to ", .(Last_Day))))
link_1 <- "https://www.lbma.org.uk"
link_2 <- "https://finance.yahoo.com"
subtitle_content <- bquote(paste("Path length ", .(length), " sample points. Data from LBMA (", .(link_1), ") and Yahoo Finance (", .(link_2),")"))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("dates")
x_breaks_low <- min(Data_df$Index)
x_breaks_up <- max(Data_df$Index)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=35)
x_binwidth <- x_breaks[2]-x_breaks[1]
x_labs <- as.character(Data_df$Date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("Residuals")
y_breaks_num <- 10
y_bound_low <- min(0, Data_df$V3, na.rm=TRUE)
y_bound_up <- max(0, Data_df$V3, na.rm=TRUE)
y_binwidth <- round((y_bound_up-y_bound_low)/y_breaks_num, digits=3)
y_breaks_low <- floor(y_bound_low/y_binwidth)*y_binwidth
y_breaks_up <- ceiling(y_bound_up/y_binwidth)*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth),3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("Residuals")
col_2 <- bquote("Regression Line")
col_3 <- bquote("LOESS Curve")
leg_labs <- c(col_1, col_2, col_3)
leg_cols <- c(col_1="blue", "col_2"="green", "col_3"="red")
leg_sort <- c("col_1", "col_2", "col_3")
Est_Par_Res_sp <- ggplot2::ggplot(Data_df) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=V3, color="col_1"), na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=V3, color="col_2"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=V3, color="col_3"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, labels=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1))  +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("blank", "solid", "dashed"),
                                                                    shape = c(16, NA, NA)))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Est_Par_Res_sp)

# The line plot
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Line Plot of the Residuals from the Non Linear Estimate of the Risk Free Rate from ", .(First_Day), " to ", .(Last_Day))))
Est_Par_Res_lp <- ggplot2::ggplot(na.omit(Data_df)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=V3, color="col_1", group=1)) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=V3, color="col_2"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=V3, color="col_3"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1)) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("solid", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Est_Par_Res_lp)

# Can we assess that the above residuals constitute the realisation of some (Gaussian) white noise?

#####################################################################################################################
# We create a suitable data frame to study the second regression.

F <- Spot_Fut_df$Dec21_Fut-Spot_Fut_df$Apr21_Fut
Diff_F <- c(diff(F, lag= 1, differences=1))
# length(Diff_F)
S=Spot_Fut_df$Spot
S_2 <- c(S[-1])
# length(S_2)
S_1 <- c(S[-length(S)])
# length(S_1)
t <- Spot_Fut_df$Dec21_Fut_YtM[-length(Spot_Fut_df$Dec21_Fut_YtM)]
# length(t)
Diff_T <- Spot_Fut_df$Dec21_Fut_YtM-Spot_Fut_df$Apr21_Fut_YtM
NL_Regr_II_df <- data.frame(Index=1:length(Diff_F), Date=Spot_Fut_df$Date[-1], t=t, S_1=S_1, S_2=S_2, Diff_F=Diff_F)
head(NL_Regr_II_df)

Est_df <- na.exclude(NL_Regr_II_df)
Est_Par <- vector(mode="list", length=0)
SUCCESS_II_def_df <- data.frame(matrix(nrow=0, ncol=6))
SUCCESS_II_def_df <-  rename(SUCCESS_II_def_df, try_num=X1, init_r=X2, RSE=X3, AIC=X4, BIC=X5, fin_r=X6)
Res_SUCCESS_II_def_df <- data.frame(Index=1:nrow(Est_df),Date=Est_df$Date)
con <- file("estimate.log")
sink(con, append=TRUE, type=c("output","message"), split=TRUE)
# library(nlstools)
for(n in 1:100){
  tryCatch(
    expr={
      init_r=runif(1, min=0,max=0.1)
      print(n)
      show(c(round(init_r,4)))
      NLS_Est <- nls(Diff_F ~ (1-exp(-r*Diff_T[1]))*exp(r*t)*(exp(-r)*S_2-S_1), data=Est_df, 
                     start=list(r=init_r), trace=TRUE, algorithm="default", 
                     control=list(maxiter = 1000, tol = 1e-09))
      message("SUCCESS!")
      Est_Par[[length(Est_Par)+1]] <- NLS_Est
      SUCCESS_II_def_df[nrow(SUCCESS_II_def_df)+1,] <- c(n, init_r, 
                                                         summary(NLS_Est)$sigma, AIC(NLS_Est), BIC(NLS_Est),
                                                         summary(NLS_Est)$coefficients[1, 1])
      Res_SUCCESS_II_def_df[,ncol(Res_SUCCESS_II_def_df)+1] <- nlsResiduals(NLS_Est)$resi1[,2]
    }, error=function(e){cat("ERROR: ", conditionMessage(e), "\n")})
}
sink()
print(SUCCESS_II_def_df)
print(Res_SUCCESS_II_def_df)
write.csv(SUCCESS_II_def_df, "Success.csv", row.names=FALSE)
write.csv(Res_SUCCESS_II_def_df, "Res_Succes.csv", row.names=FALSE)

#####################################################################################################################v
# We plot the residuals of the regression
# The scatter plot
Data_df <- Res_SUCCESS_II_def_df
length <- length(na.omit(Data_df$V3))
First_Day <- as.character(xts::first(Data_df$Date))
Last_Day <- as.character(xts::last(Data_df$Date))
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Scatter Plot of the Residuals from the II Non Linear Estimate of the Risk Free Rate from ", .(First_Day), " to ", .(Last_Day))))
link_1 <- "https://www.lbma.org.uk"
link_2 <- "https://finance.yahoo.com"
subtitle_content <- bquote(paste("Path length ", .(length), " sample points. Data from LBMA (", .(link_1), ") and Yahoo Finance (", .(link_2),")"))
caption_content <- "Author: Roberto Monte"
x_name <- bquote("dates")
x_breaks_low <- min(Data_df$Index)
x_breaks_up <- max(Data_df$Index)
x_breaks <- seq(from=x_breaks_low, to=x_breaks_up, by=35)
x_binwidth <- x_breaks[2]-x_breaks[1]
x_labs <- as.character(Data_df$Date[x_breaks])
J <- 0
x_lims <- c(x_breaks_low-J*x_binwidth, x_breaks_up+J*x_binwidth)
y_name <- bquote("Residuals")
y_breaks_num <- 10
y_bound_low <- min(0, Data_df$V3, na.rm=TRUE)
y_bound_up <- max(0, Data_df$V3, na.rm=TRUE)
y_binwidth <- round((y_bound_up-y_bound_low)/y_breaks_num, digits=3)
y_breaks_low <- floor(y_bound_low/y_binwidth)*y_binwidth
y_breaks_up <- ceiling(y_bound_up/y_binwidth)*y_binwidth
y_breaks <- round(seq(from=y_breaks_low, to=y_breaks_up, by=y_binwidth),3)
y_labs <- format(y_breaks, scientific=FALSE)
K <- 0
y_lims <- c((y_breaks_low-K*y_binwidth), (y_breaks_up+K*y_binwidth))
col_1 <- bquote("Residuals")
col_2 <- bquote("Regression Line")
col_3 <- bquote("LOESS Curve")
leg_labs <- c(col_1, col_2, col_3)
leg_cols <- c(col_1="blue", "col_2"="green", "col_3"="red")
leg_sort <- c("col_1", "col_2", "col_3")
Est_Par_II_Res_sp <- ggplot2::ggplot(Data_df) +
  geom_point(alpha=1, size=0.9, shape=19, aes(x=Index, y=V3, color="col_1"), na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=V3, color="col_2"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=V3, color="col_3"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, labels=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1))  +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("blank", "solid", "dashed"),
                                                                    shape = c(16, NA, NA)))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Est_Par_II_Res_sp)

# The line plot
title_content <- bquote(atop("University of Roma \"Tor Vergata\" - Corso di Metodi Probabilistici e Statistici per i Mercati Finanziari", 
                             paste("Line Plot of the Residuals from the II Non Linear Estimate of the Risk Free Rate from ", .(First_Day), " to ", .(Last_Day))))
Est_Par_II_Res_lp <- ggplot2::ggplot(na.omit(Data_df)) +
  geom_line(alpha=1, size=0.5, linetype="solid", aes(x=Index, y=V3, color="col_1", group=1)) +
  geom_smooth(alpha=1, size = 0.5, linetype="solid", aes(x=Index, y=V3, color="col_2"),
              method = "lm" , formula = y ~ x, se=FALSE, fullrange=TRUE, na.rm=TRUE) +
  geom_smooth(alpha=1, size = 0.8, linetype="dashed", aes(x=Index, y=V3, color="col_3"),
              method = "loess", formula = y ~ x, se=FALSE, na.rm=TRUE) +
  scale_x_continuous(name=x_name, breaks=x_breaks, label=x_labs, limits=x_lims) +
  scale_y_continuous(name=y_name, breaks=y_breaks, labels=NULL, limits=y_lims,
                     sec.axis = sec_axis(~., breaks = y_breaks, labels=y_labs)) +
  ggtitle(title_content) +
  labs(subtitle=subtitle_content, caption=caption_content) +
  scale_linetype_manual(name="", labels=leg_0_lab, values=leg_0_line_type, guide=guide_legend(order=1)) +
  scale_colour_manual(name="", labels=leg_labs, values=leg_cols, breaks=leg_sort,
                      guide=guide_legend(order=2, override.aes=list(linetype=c("solid", "solid", "dashed")))) +
  theme(plot.title=element_text(hjust=0.5), plot.subtitle=element_text(hjust=0.5),
        axis.text.x = element_text(angle=0, vjust=1),
        legend.key.width = unit(0.80,"cm"), legend.position="bottom")
plot(Est_Par_II_Res_lp)

# Can we assess that the above residuals constitute the realization of some (Gaussian) white noise?

#####################################################################################################################
#####################################################################################################################