# Challenge Deliverable I
library(dplyr) # import dplyr dependency
mechacar_challenge <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F) #read the csv file as dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_challenge) #create linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_challenge)) #determine the p-value and the r-squared value for the linear regression model

# Challenge Deliverable II 

suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F,header=TRUE) # read the csv file as a table
total_summary <- suspension_coil %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI),standard_deviation=sd(PSI)) #get the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarise(mean=mean(PSI), median=median(PSI), variance=var(PSI), standard_deviation=sd(PSI)) #group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column


## Challenge Deliverable III

t.test(suspension_coil$PSI,mu = 1500) #determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
#determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch

t.test(subset(suspension_coil,Manufacturing_Lot == "Lot1")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot == "Lot2")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot == "Lot3")$PSI,mu = 1500)
