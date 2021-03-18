# Challenge Deliverable I
library(dplyr) # import dplyr dependency
mechacar_challenge <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #read the csv file as dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_challenge) #create linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_challenge)) #determine the p-value and the r-squared value for the linear regression model

