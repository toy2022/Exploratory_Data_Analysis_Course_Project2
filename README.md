# Exploratory_Data_Analysis_Course_Project2

## Instruction
Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.

## Course Assignment
This repo contains the R scripts and outputs for the Exploratory Data Analysis Course Project 2. The overall goal of this course assignment is to explore the National Emissions Inventory database and delineate visually about fine particulate matter pollution in the United States of America from 1999 to 2008. This project will be executed by generating a R script answering a corresponding question for the assignment and producing a series of graphs in PNG format to support my answer as stated below: 
* plot1.R: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
* plot2.R: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.
* plot3.R: Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
* plot4.R: Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
* plot5.R: How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
* plot6.R: Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?
