library(dplyr)
library(tidyverse)

mecha_car_mpg <- read.csv(file = 'MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg)

summary(lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_mpg))

total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
 

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

sample_psi <- suspension_coil %>% sample_n(50)
t.test (sample_psi$PSI, mu= mean(suspension_coil$PSI))

psi_lot1 <- suspension_coil %>% filter(Manufacturing_Lot == "Lot1")
psi_lot2 <- suspension_coil %>% filter(Manufacturing_Lot == "Lot2")
psi_lot3 <- suspension_coil %>% filter(Manufacturing_Lot == "Lot3")

t.test ((subset(suspension_coil, Manufacturing_Lot == "Lot1"))$PSI, mu= mean(suspension_coil$PSI))
t.test ((subset(suspension_coil, Manufacturing_Lot == "Lot2"))$PSI, mu= mean(suspension_coil$PSI))
t.test ((subset(suspension_coil, Manufacturing_Lot == "Lot3"))$PSI, mu= mean(suspension_coil$PSI))

