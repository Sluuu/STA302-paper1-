#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Sean Liu [...UPDATE THIS...]
# Date: 23 January 2024 [...UPDATE THIS...]
# Contact: yuhsiang.liu@mail.utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(opendatatoronto)
library(dplyr)
library(readxl)
download.file(url = "https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/52182614-1f0b-42be-aca4-3f86dc8e004c/resource/5cf04d72-dd7b-499c-a28a-e8aceb44f249/download/2022%20Income%20Scenario%20-%20Without%20Subsidies,%20Market%20Rent.csv", 
              destfile = "raw_data.csv")


data <- read.csv("raw_data.csv")


# get package


# [...UPDATE THIS...]

#### Simulate data ####
data_with_sub <- read.csv("/cloud/project/sta302_starter_folder-main/inputs/data/2022 Income Scenario - With Subsidies.csv")
data_avg_rent_nosub <- read.csv("/cloud/project/sta302_starter_folder-main/inputs/data/2022 Income Scenario - Without Subsidies, Average Rent.csv")
data_mkt_rent_nosub <- read.csv("/cloud/project/sta302_starter_folder-main/inputs/data/2022 Income Scenario - Without Subsidies, Market Rent.csv")

x <- data_mkt_rent_nosub


