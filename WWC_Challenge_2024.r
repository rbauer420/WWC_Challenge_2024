# Dashbboard features
# Two columns: left will have inputs and right will display the data
# Inputs will allow the user to display data based on different variables such as social media preference
### by platform, gender, parents income, etc.
# Data vizualization will include graphs and graphics 
# Export feature to export a report based on the user inputs

# load the libraries we need

library(data.table)
library(DT)
library(gridExtra)
library(jsonlite)
library(knitr)
library(shiny)
library(shinyjs)
library(tidyverse)

# Analysis tasks:
# Pull data into a data frame, rename columns, delete rows that are not needed for the analysis and save filtered data as new data frame

all_data_df <- read_csv("WhatsgoodlyData-10.csv")

colnames(all_data_df) <- c("Question", "Segment_Type", "Description", "Social_Media_Platform", "Counts", "Percents")

clean_data_df <- all_data_df[-c(17:324,345:356, 361:376, 389:400, 417:464, 469:492, 505:508, 513:516),]

# Create graphs showing distribution by mobile
# Create graphs showing distribution by web
# Create graphs showing distribution by gender
# Create variable to calculate total freqencies for mobile and web
# Create variable to combine parents income into single variable
# Create variable to combine parents age into single variable
# Create filters to splice the data by: age, race, parents income, student loan debt, did not vote