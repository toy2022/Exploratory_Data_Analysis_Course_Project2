###############################################################################
# Title                   : Exploratory Data Analysis Course Project 
# Course Instructor       : Roger D. Peng
# Project Start Date      : July 28, 2022
# Project End Date        : July 28, 2022
# Prepared & Compiled by  : Trokon Omarley Yeabah
###############################################################################

# install the appropriate packages 
install.packages("data.table")
install.packages("dplyr")
install.packages("plyr")


# load the packages 
library(data.table)
library(dplyr)
library(plyr)


# identify downloaded file pathway and load the dataset
setwd ("C:/Users/troko/Downloads/Exploratory_Data_Analysis_Course_Project2/exdata_data_NEI_data")
SCC <- data.table::as.data.table(x = readRDS(file = "Source_Classification_Code.rds"))
NEI <- data.table::as.data.table(x = readRDS(file = "summarySCC_PM25.rds"))


# Generate a plot for the total emissions over the years
NEI[, Emissions := lapply(.SD, as.numeric), .SDcols = c("Emissions")]
totalNEI <- NEI[fips=='24510', lapply(.SD, sum, na.rm = TRUE)
                , .SDcols = c("Emissions")
                , by = year]

barplot(totalNEI[, Emissions]
        , names = totalNEI[, year]
        , xlab = "Years", ylab = "Emissions"
        , main = "Emissions over the Years")

png(filename='plot2.png')

dev.off()