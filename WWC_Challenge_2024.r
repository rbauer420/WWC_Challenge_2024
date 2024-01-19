############################## Dashbboard features

# Two columns: left will have inputs and right will display the data
# Inputs will allow the user to display data based on different variables such as campsite features, cost, and/or ratings
### by platform, gender, parents income, etc.
# Data vizualization will include tables, graphs, and graphics 
# Export feature to export a report based on the user inputs


############################## Analysis tasks:

####### FOR FILE "Campgrounds_by_County_Within_Adirondack___Catskill_Forest_Preserve.csv"

#Create ID variable
#Create variables for "Water", "Firepit", "Bathroom", "Tables", "Secluded", "Cost_Per_Night"
#Populate the values for "Water", "Firepit", "Bathroom", "Tables", and "Secluded" with a 1=Yes and 0=No using the =RANDBETWEEN(0,1) Excel function
   # Add data values to above 
#Populate the values for "Cost_Per_Night" using the =RANDBETWEEN(0,50) Excel function
   # Convert data above as currency 


####### FOR FILE "Campgrounds_by_County_Ratings.csv"

# Use same ID that is in file "Campgrounds_by_County_Within_Adirondack___Catskill_Forest_Preserve.csv" to link files
# Create variables for "Ratings"
# Populate the values for "Average_Rating" using the =RANDBETWEEN(0,10) Excel function
# Populate the values for "Cost_Per_Night" using the =RANDBETWEEN(0,50) Excel function
   # Convert data above as currency


###### IN POWER BI
# Link files using ID variable
# Create table showing distribution by county location for all campsites
# Create table showing distribution by campsite amenities for all campsites
# Create table showing distribution by cost for all campsites
# Create table showing distribution by ratings for all campsites
# Create filters to splice the data by campsite amenities, rating 
# Create map showing county and location for all campsites using latitutde and longitude 
# Add button and function to export data dashboard into a CSV file










############################## OLD Dashbboard features

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

############################## OLD Analysis tasks:

# Pull data into a data frame, rename columns, and delete rows that are not needed for the analysis DATA NOT USED FOR DASHBOARD

all_data_df <- read_csv("WhatsgoodlyData-10.csv")

colnames(all_data_df) <- c("Question", "Segment_Type", "Description", "Social_Media_Platform", "Counts", "Percents")

clean_data_df <- all_data_df[-c(17:324,345:356, 361:376, 389:400, 417:464, 469:492, 505:508, 513:516),]



# Create variable (Total_Frequency_[Social Media Platform]) to calculate total frequencies for mobile and web DATA NOT USED FOR DASHBOARD

clean_data_df <- rbind(clean_data_df, Total_Frequency_Instagram = c('Total users of Instagram across web and mobile','Custom','Total users of Instagram across web and mobile','Instagram',2589,0.272785))

clean_data_df <- rbind(clean_data_df, Total_Frequency_Facebook = c('Total users of Facebook across web and mobile','Custom','Total users of Facebook across web and mobile','Facebook',1214,0.127910652))

clean_data_df <- rbind(clean_data_df, Total_Frequency_Snapchat = c('Total users of Snapchat across web and mobile','Custom','Total users of Snapchat across web and mobile','Snapchat',5470,0.576335476))

clean_data_df <- rbind(clean_data_df, Total_Frequency_LinkedIn = c('Total users of LinkedIn across web and mobile','Custom','Total users of LinkedIn across web and mobile','LinkedIn',218,0.022969129))



# Export final dataset as a CSV DATA NOT USED FOR DASHBOARD
write.csv(clean_data_df, "pathway", row.names=FALSE)

# Create graphs showing distribution by mobile DATA NOT USED FOR DASHBOARD
# Create graphs showing distribution by web DATA NOT USED FOR DASHBOARD
# Create graphs showing distribution by gender DATA NOT USED FOR DASHBOARD
# Create filters to splice the data by: age, race, parents income, student loan debt, did not vote DATA NOT USED FOR DASHBOARD