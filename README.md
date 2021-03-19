# Mechanical Cars Statistical Analysis

## Analysis Overview 

## Analysis Resources 

## Linear Regression to Predict MPG

![Deliverable_I](https://github.com/TamaraGR/MechaCar_Statistical_Analysis/blob/main/Deliverable_I.png)

The following questions address the linear regression analysis with the goal of predicting MPG:

- [x] Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Vehicle length, ground clearance and to a lesser extend vehicle weight provided a non-random amount of variance to the MPG values of this dataset. The three listed values have significant statistical impact on the MPG of this dataset. 

- [x] Is the slope of the linear model considered to be zero? Why or why not?

The slope of this linear model is not considered to be 0. Our p value is smaller than the assumed significance level of 0.05% (as you can see in the screenshot above), and our R squared is at 0.6825. This gives us enough evidence to decline the null hypothesis. 

- [x] Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This linear model provides effective enough prototype, considering the R squared value at 0.6825 and multiple R squared value at 0.7149. Some could say that the variables at hand don't give us the ideal prediction model, but it's still quiet effective, considering the values of the vehicle length, the ground clearance and the vehicle weight. 
