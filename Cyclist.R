install.packages('chron')
install.packages("lubridate")
install.packages("DescTools")
library('readr')
library('tidyverse')
library('dplyr')
library('ggplot2')
library("chron")
library('lubridate')
library("DescTools")
cyclist_data <- read_csv("/home/aaqib/Documents/CaseStudy/data3.csv")



##added a new column of duration with hms  to minutes
rd_time1 <- cyclist_data %>%
    mutate(
        rideDurationMins =hms(ride_time)
    )

##new column in seconds
rd_time2 <- rd_time1 %>%
    mutate(
        rideDurationSeconds = period_to_seconds(rideDurationMins)
    )


View(rd_time2)

rd_time2 %>%
    data.frame(rideDurationSeconds)





md <-mode(1,cyclist_data,day_of_week)

View(md)


