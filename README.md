# mecha_car_analysis
Analysis of production data from a car manufacturer

# Objective
Analyze productiond data from a new line of concept "mecha" cars, determine if there are any factors that are directly linked with the MPG of the concept cars.  

Analyze suspension coil data to summarize information, then perform t-test to determine if all manufacturing lots are similar. 

Lastly, measure "mecha" car against their competition.

# Resources
- R
  - tidyverse
  - dplyr
  - ggplot
- MechaCar_mpg data (csv)
- Suspension_Coil data (csv)


# MPG analysis

Given a list of 50 concept cars along with their lenght, weight, spoiler angle, ground clearance, drive train ang MPG, we were asked to run a regression analyssi on these variables to determine which (if any) impact MPG. 

<img width="459" alt="Screen Shot 2022-08-02 at 2 07 57 PM" src="https://user-images.githubusercontent.com/6634774/182445847-901de665-673a-4604-aebc-430079d4b706.png">

### MPG Study Conclusions
1. The greatest factors for MPG are the vehicle length and the ground clearance each of these are well below our.05 level of significance.
2. The slope of this linear model is not 0 because we can see that there is a coefficient value for each variable, additionaly the p-value for the data set is well below the .05 threshold, so we know that there is a relationship here.  If there was no releaitonship between this data, then we could reasonably assume the slope of our regression model would be 0, or close to 0.
3. Seeing as how the r-squared value is .68, we can assume that there is reasonable about of vailidy in our data set; however, this suggests only a 68% level of certainty, and we'd like to see a higher r-squared score.  If we look back at our regression satistics, we may be able to push the r-squared score a bit higher by removing drivetrain(AWD) and spoiler angle from the data being analzyed.


