#### Preamble ####
# Purpose: Clean the data downloaded from https://stats.oecd.org/Index.aspx?DataSetCode=EXP_MORSC#
# Author: Zhongyu Huang
# Data: 6 April 2021
# Contact: zhongyu.huang@mail.utoronto.ca 
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the data and saved it to inputs/data
# - Don't forget to gitignore it!

#### Workspace setup ####

library(haven)
library(tidyverse)

# Read in the raw data. 
Ap_data <- readr::read_csv("inputs/data/AIR_EMISSIONS_DATA.csv")


# Just keep some variables that may be of interest from the Ap_data 

reduced_df <- 
  Ap_data %>% 
  select(Country, 
         Pollutant,
         Year,
         FemaleD,
         MaleD,
         Unit,
         PowerCode,
         `Total man-made emissions`,
         Waste,
         Agriculture,
         Miscellaneous,
         `Road Transport`,
         `Power stations`,
         `Other Mobile Sources`,
         Combustion,
         `Industrial processes and product use`,
         `Premature deaths`)


#save the output in outputs/data
write.csv(reduced_df, file="outputs/data/cleaned_APD.csv")





         