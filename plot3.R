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
install.packages("ggplot2")

# load the packages 
library(data.table)
library(dplyr)
library(plyr)
library(ggplot2)

# identify downloaded file pathway and load the dataset
setwd ("C:/Users/troko/Downloads/Exploratory_Data_Analysis_Course_Project2/exdata_data_NEI_data")
SCC <- data.table::as.data.table(x = readRDS(file = "Source_Classification_Code.rds"))
NEI <- data.table::as.data.table(x = readRDS(file = "summarySCC_PM25.rds"))


# Subset NEI data by Baltimore
baltimoreNEI <- NEI[fips=="24510",]

ggplot(baltimoreNEI,aes(factor(year),Emissions,fill=type)) +
  geom_bar(stat="identity") +
  theme_bw() + guides(fill=FALSE)+
  facet_grid(.~type,scales = "free",space="free") + 
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
  labs(title=expression("PM"[2.5]*" Emissions, Baltimore City 1999-2008 by Source Type"))

png(filename='plot3.png')

dev.off()