library('dplyr')


# MechaCar MPG prediction
mecha_car<-read.csv('MechaCar_mpg.csv')


mecha_car_lm<-lm(mecha_car$mpg~mecha_car$AWD +
                   mecha_car$ground_clearance +
                   mecha_car$spoiler_angle +
                   mecha_car$vehicle_length +
                   mecha_car$vehicle_weight,
                 mecha_car)


summary(mecha_car_lm)


# Summary Statistics on Suspension Coils
'Suspension_Coil.csv' %>%
  read.csv()->suspension_coil_data


suspension_coil_data %>%
  summarise(
    Mean = mean(PSI),
    Median = median(PSI),
    Variance = var(PSI),
    SD = sd(PSI)
  )->total_summary


suspension_coil_data %>%
  group_by(Manufacturing_Lot) %>%
  summarise(
    Mean = mean(PSI),
    Median = median(PSI),
    Variance = var(PSI),
    SD = sd(PSI)
  )->lot_summary


# T-Tests on Suspension Coils
t.test(
  suspension_coil_data$PSI,
  subset = suspension_coil_data$Manufacturing_Lot,
  mu = 1500
)


