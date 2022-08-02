library(dplyr)
library(tidyverse)

mecha_car_mpg <- read.csv(file = 'MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg)

summary(lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg))

total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
 

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))