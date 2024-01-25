#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Sean Liu [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
data <- read.csv("raw_data.csv")
x <- data.frame(
  Category = c("Wage Income", "Benefit Income", "Expenses", "Funds Remaining"),
  Scenerio_1 = c(2600, 1404, 6445, -2441),
  Scenerio_2 = c(9458, 425, 6445, 2878),
  Scenerio_3 = c(2600, 131, 2797, -66)
)

SC1_Benefit <- data.frame( 
  Category = c("Canada Child Benefit", "GST/HST credit", "Ontario Trillium Benefit", "Canada Worker Benefit", "Climate Action Incentive Payment"),
  Amount = c(1162, 76, 197, 80, 62)
  )
SC2_Benefit <- data.frame( 
  Category = c("Canada Child Benefit", "GST/HST credit", "Ontario Trillium Benefit", "Canada Worker Benefit", "Climate Action Incentive Payment"),
  Amount = c(363, 0, 0, 0, 62)
)
SC3_Benefit <- data.frame( 
  Category = c("Canada Child Benefit", "GST/HST credit", "Ontario Trillium Benefit", "Canada Worker Benefit", "Climate Action Incentive Payment"),
  Amount = c(0, 38, 62, 0, 31)
)

#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
