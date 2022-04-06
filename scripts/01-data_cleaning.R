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
Ap_data <- readr::read_csv("inputs/data/AIR_EMISSIONS.csv")
De_data <- readr::read_csv("inputs/data/EXP_MORSC.csv")

# Just keep some variables that may be of interest from the De_data 
reduced_De <- 
  De_data %>% 
  select(Country, 
         Variable,
         Risk,
         Sex,
         Age,
         Value,
         Year,
         Unit)
# rename variable "value"
reduced_De <- reduced_De %>% rename(NumOfDeath = Value)

# select observations that are from all age range, no matter what gender.
redecued_De <- reduced_De %>% filter(reduced_De$Age =='All')

         
#rename variable "value" in Ap_data
reduced_Ap <- Ap_data %>% rename(TT_emission = Value)

#save two dataset in outputs/data
write.csv(reduced_Ap, file="outputs/data/cleaned_AP.csv")
write.csv(reduced_De, file="outputs/data/cleaned_DE.csv")




         