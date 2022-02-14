library("dplyr") #import dplyr package dependency

mechacar_data = read.csv(file='MechaCar_mpg.csv', stringsAsFactors=FALSE) #import csv file as data frame

mechacar_plt = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_data) #generate linear regression against mpg
summary(mechacar_plt) #summarize it
plot(mechacar_plt) #plots!
