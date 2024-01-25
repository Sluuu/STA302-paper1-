#### Preamble ####
# Purpose: Models... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("outputs/data/analysis_data.csv")

### Model data ####
y <- data.frame(
  Category = c("Wage Income", "Canada Child Benefit", "GST/HST credit", "Ontario Trillium Benefit", "Canada Worker Benefit", "Climate Action Incentive Payment", 
                 "Expenses"),
  Scenerio_1 = c(2600, 1162, 76, 197, 80, 62, 6445),
  Scenerio_2 = c(9458, 363, 0, 0, 0, 62, 6445),
  Scenerio_3 = c(2600, 0, 38, 62, 0, 31, 2797)
)


#### Save model ####
saveRDS(
  first_model,
  file = "outputs/models/first_model.rds"
)


