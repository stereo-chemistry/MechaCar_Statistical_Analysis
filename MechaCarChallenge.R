library("dplyr") #import dplyr package dependency

#Deliverable 1

mechacar_data = read.csv(file='MechaCar_mpg.csv', stringsAsFactors=FALSE) #import csv file as data frame

mechacar_plt = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_data) #generate linear regression against mpg
summary(mechacar_plt) #summarize it
plot(mechacar_plt) #plots!

#Deliverable 2

suspensionCoil_data = read.csv(file='Suspension_Coil.csv', stringsAsFactors=FALSE)

total_summary = summarise(suspensionCoil_data,
                          Mean=mean(PSI, na.rm=TRUE),
                          Median=median(PSI, na.rm=TRUE),
                          Variance=var(PSI, na.rm=TRUE),
                          SD=sd(PSI, na.rm=TRUE))

lot_summary = suspensionCoil_data %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI, na.rm=TRUE),
                                                                                Median=median(PSI, na.rm=TRUE),
                                                                                Variance=var(PSI, na.rm=TRUE),
                                                                                SD=sd(PSI, na.rm=TRUE))
