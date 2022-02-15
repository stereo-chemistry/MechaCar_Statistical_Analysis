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

#Deliverable 3

t.test(suspensionCoil_data$PSI, mu=1500) #compare MechaCar suspension coil average PSI to population mean of 1500 PSI

Lot1 <- subset(suspensionCoil_data, Manufacturing_Lot == "Lot1")
t.test(Lot1$PSI, mu=1500) #compare MechaCar Lot1 suspension coil average PSI to population mean of 1500 PSI

Lot2 <- subset(suspensionCoil_data, Manufacturing_Lot == "Lot2")
t.test(Lot2$PSI, mu=1500) #compare MechaCar Lot2 suspension coil average PSI to population mean of 1500 PSI

Lot3 <- subset(suspensionCoil_data, Manufacturing_Lot == "Lot3")
t.test(Lot3$PSI, mu=1500) #compare MechaCar Lot3 suspension coil average PSI to population mean of 1500 PSI
