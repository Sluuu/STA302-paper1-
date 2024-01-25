#### Preamble ####
# Purpose: Cleans the raw data recorded 
# Author: Sean Liu 
# Date: 24 January 2024
# Contact: yuhsiang.liu@mail.utoronto.ca 
# License: MIT


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

