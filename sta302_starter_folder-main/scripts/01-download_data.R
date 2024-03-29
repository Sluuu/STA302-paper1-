#### Preamble ####
# Purpose: Downloads and saves the data from 
# Author: Sean Liu 
# Date: 23 January 2024 
# Contact: yuhsiang.liu@mail.utoronto.ca 
# License: MIT


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
install.packages("rc.template")


#### Download data ####
download.file(url = "https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/52182614-1f0b-42be-aca4-3f86dc8e004c/resource/5cf04d72-dd7b-499c-a28a-e8aceb44f249/download/2022%20Income%20Scenario%20-%20Without%20Subsidies,%20Market%20Rent.csv", 
              destfile = "raw_data.csv")

#### Save data ####
data <- read.csv("raw_data.csv")

         
