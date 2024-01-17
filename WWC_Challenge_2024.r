############################## Dashbboard features

# Two columns: left will have inputs and right will display the data
# Inputs will allow the user to display data based on different variables such as social media preference
### by platform, gender, parents income, etc.
# Data vizualization will include graphs and graphics 
# Export feature to export a report based on the user inputs

# load the libraries need

library(data.table)
library(DT)
library(gridExtra)
library(jsonlite)
library(knitr)
library(shiny)
library(shinyjs)
library(tidyverse)
library(dplyr)

############################## Analysis tasks:

# Pull data into a data frame, rename columns, and delete rows that are not needed for the analysis 

all_data_df <- read_csv("WhatsgoodlyData-10.csv")

colnames(all_data_df) <- c("Question", "Segment_Type", "Description", "Social_Media_Platform", "Counts", "Percents")

clean_data_df <- all_data_df[-c(17:324,345:356, 361:376, 389:400, 417:464, 469:492, 505:508, 513:516),]



# Create variable (Total_Frequency_[Social Media Platform]) to calculate total frequencies for mobile and web

clean_data_df <- rbind(clean_data_df, Total_Frequency_Instagram = c('Total users of Instagram across web and mobile','Custom','Total users of Instagram across web and mobile','Instagram',2589,0.272785))

clean_data_df <- rbind(clean_data_df, Total_Frequency_Facebook = c('Total users of Facebook across web and mobile','Custom','Total users of Facebook across web and mobile','Facebook',1214,0.127910652))

clean_data_df <- rbind(clean_data_df, Total_Frequency_Snapchat = c('Total users of Snapchat across web and mobile','Custom','Total users of Snapchat across web and mobile','Snapchat',5470,0.576335476))

clean_data_df <- rbind(clean_data_df, Total_Frequency_LinkedIn = c('Total users of LinkedIn across web and mobile','Custom','Total users of LinkedIn across web and mobile','LinkedIn',218,0.022969129))



# Export final dataset as a CSV
write.csv(clean_data_df, "pathway", row.names=FALSE)


# Create graphs showing distribution by mobile
# Create graphs showing distribution by web
# Create graphs showing distribution by gender
# Create filters to splice the data by: age, race, parents income, student loan debt, did not vote