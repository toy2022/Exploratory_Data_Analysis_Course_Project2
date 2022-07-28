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


# Subset coal combustion related NEI data
combustionRelated <- grepl("comb", SCC[, SCC.Level.One], ignore.case=TRUE)
coalRelated <- grepl("coal", SCC[, SCC.Level.Four], ignore.case=TRUE) 
combustionSCC <- SCC[combustionRelated & coalRelated, SCC]
combustionNEI <- NEI[NEI[,SCC] %in% combustionSCC]

ggplot(combustionNEI,aes(x = factor(year),y = Emissions/10^5)) +
  geom_bar(stat="identity", fill ="#FF9999", width=0.75) +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (10^5 Tons)")) + 
  labs(title=expression("PM"[2.5]*" Coal Combustion Source Emissions Across US from 1999-2008"))

png(filename='plot4.png')

dev.off()