library(dplyr)
MechaCar_table<-read.csv(file='C:/Users/16307/anaconda/Class/MechaCar_Statistical_Analysis/dataset/MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)) #generate summary statistics

SuspensionCoil_table<-read.csv(file='C:/Users/16307/anaconda/Class/MechaCar_Statistical_Analysis/dataset/Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
total_summary <- SuspensionCoil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI), .groups = 'keep') #create total summary table
lot_summary <- SuspensionCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI), .groups = 'keep') #create lot summary table

t.test(SuspensionCoil_table$PSI, mu=mean(SuspensionCoil_table$PSI)) #t-test for all lots

population_lot1<-subset(SuspensionCoil_table,Manufacturing_Lot=="Lot1")
t.test(population_lot1$PSI, mu=mean(population_lot1$PSI)) #t-test for Lot1

population_lot2<-subset(SuspensionCoil_table,Manufacturing_Lot=="Lot2")
t.test(population_lot2$PSI, mu=mean(population_lot2$PSI)) #t-test for Lot2

population_lot3<-subset(SuspensionCoil_table,Manufacturing_Lot=="Lot3")
t.test(population_lot3$PSI, mu=mean(population_lot3$PSI)) #t-test for Lot3
