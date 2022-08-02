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


# Suspension Coil Analysis

Given a dataset that included suspension coil PSI from multiple different manufacturing lots, we first looked at the overall summary statistics (mean, median, variance and standard deviation), then for a further analysis, we grouped the set by its manufacturing lot and compared each manufacturing lots PSI statistics.  The manufacturers design specifications stated that there should be no more than 100 PSI variance within a lots suspension coils.

Total Summary:

<img width="332" alt="Screen Shot 2022-08-02 at 2 55 36 PM" src="https://user-images.githubusercontent.com/6634774/182452072-e9336dbe-d737-4e05-b41a-e3508e949a46.png">

Based on the total summary we can conclude that the data set met the manufacturers design specifications; however, the variance was 62.29, which was much higher than expected, but it did not hit the threshold set by the manufacturers guidelines.  We wanted to take a deeper look into the statiscs, so we decided to run our summary statistics on each lot in our data set to see if there may have been a lot that had much more significant variance in PSI than our entire data set.

<img width="485" alt="Screen Shot 2022-08-02 at 2 59 12 PM" src="https://user-images.githubusercontent.com/6634774/182452653-ed6184b1-a932-43a4-aeb7-9079d12052cb.png">

Lot 1 and 2 look pretty good, both are well below teh 100PSI variance guidelines set by the manufacturers design; however, lot 3 showed significant issues.  A variance of 170 PSI means that there were signifcant problems with this lots manufacturing processes.  Because of this variance we highly recommend to the manufactuerer to pull all coils in the Lot3 run, and take a deep look into the manufacturingn process to ensure all machines/proceses/workflows are operating as intended.

