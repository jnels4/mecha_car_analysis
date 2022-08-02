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


### Summary Statistics - Mean / Median / Variance / Standard Deviation

Given a dataset that included suspension coil PSI from multiple different manufacturing lots, we first looked at the overall summary statistics (mean, median, variance and standard deviation), then for a further analysis, we grouped the set by its manufacturing lot and compared each manufacturing lots PSI statistics.  The manufacturers design specifications stated that there should be no more than 100 PSI variance within a lots suspension coils.

Total Summary:

<img width="332" alt="Screen Shot 2022-08-02 at 2 55 36 PM" src="https://user-images.githubusercontent.com/6634774/182452072-e9336dbe-d737-4e05-b41a-e3508e949a46.png">

Based on the total summary we can conclude that the data set met the manufacturers design specifications; however, the variance was 62.29, which was much higher than expected, but it did not hit the threshold set by the manufacturers guidelines.  We wanted to take a deeper look into the statiscs, so we decided to run our summary statistics on each lot in our data set to see if there may have been a lot that had much more significant variance in PSI than our entire data set.

<img width="485" alt="Screen Shot 2022-08-02 at 2 59 12 PM" src="https://user-images.githubusercontent.com/6634774/182452653-ed6184b1-a932-43a4-aeb7-9079d12052cb.png">

Lot 1 and 2 look pretty good, both are well below teh 100PSI variance guidelines set by the manufacturers design; however, lot 3 showed significant issues.  A variance of 170 PSI means that there were signifcant problems with this lots manufacturing processes.  Because of this variance we highly recommend to the manufactuerer to pull all coils in the Lot3 run, and take a deep look into the manufacturingn process to ensure all machines/proceses/workflows are operating as intended.

### T-test - Overall / Sample tests

After running the summary statistics for the PSI of our manufacturers data, we decided to intiatate T-Testing for the entire data set, and then subsets of the data that included each lot separately (lot1 / lot2 / lot3).  

Our first t-test took a random sampling of 50 entries in our entire dataset and running it against the whole PSI dataset.

<img width="423" alt="Screen Shot 2022-08-02 at 3 33 16 PM" src="https://user-images.githubusercontent.com/6634774/182458487-c1af733e-2978-4f93-b6ee-824894430f49.png">

Based on the p-value of this sample (.68), it can be concluded that the mean of the sample is statistically different from the population, and thus, there is alot of variance in our data, at least more than we would be comfortable with for standard manufacturing process. 

Because of the first random sampling T-Test, we decided to produce a T-Test for each manufacturing lot in our dataset. There were 3 total lots (Lot1/Lot2/Lot3) and discover which of these was throwing our data off, and if our results from the summary statistics could be supported. 

Lot1:

<img width="478" alt="Screen Shot 2022-08-02 at 3 49 20 PM" src="https://user-images.githubusercontent.com/6634774/182460943-75bb99d3-7786-44ae-8a4f-716cbbb2de0b.png">

With a p-value very far below the .05 confidence score, we can conclude that the data in the Lot1 sample is on track with the mean of the overall dataset.  

Lot2:

<img width="485" alt="Screen Shot 2022-08-02 at 3 51 12 PM" src="https://user-images.githubusercontent.com/6634774/182461190-acaebcec-f108-46a0-b7e8-d1fd177c9c86.png">

For lot2, the p-value is also well below the .05 confidence score, so we can also conclude that the Lot2 data sample is on track with the mean of the overall dataset.  This data is not skewing our mean tremendously, and falls within the acceptable range for our dataset.

Lot3:

<img width="477" alt="Screen Shot 2022-08-02 at 3 52 41 PM" src="https://user-images.githubusercontent.com/6634774/182461586-b6d1550c-a3fe-4ef2-bf08-fa65c8e6cb8d.png">

For lot3, the p-value is above our .05 confidence score, so we can conclude that the Lot3 data sample may potentially be skewing our population mean, and clearly fall out of the normal range.  This was backed up by our statistical analysis of the mean/variance and SD from the earlier sections.

### Manufacturing Next Steps

Based on our analysis of the PSI data, specifically looking at each lot as a separate entity, it can be concluded that there are siginicant issues with Lot3 and thus, this lot specifically needs to be looked at.  If we look at this as a succession lot1 > lot2 > lot3, we would suggest that the manufacturer examine the processes between lot2 and lot3 to determine what went wrong and fix it as soon as possible to get the PSI values back into an acceptable range for production and deployment in the field. 

# Study Design: Mecha Car vs Competition

"Mecha Car" has done significant analysis within their company looking at concept cars (MPG) and manufacturing suspension coils, however, "Mecha" has no idea how they are performing against the field, their competators.  In order to study this the "Mecha" car analysis team may want to look at competition data sets and compare them with their own.

When shopping for a car, many consumers look at a multitude of factors including (but not limited to):
  - MPG (highway and city)
  - Safety rating
  - Cost
  - horse power
  - maintenence cost

To determine how "mecha" stacks up against the competition the "mecha" analysis team must do the following: 
1. Collect data sets internally that tracks car cost, safety rating across models, MPG (hwy/cty), horsse power and maintence cost.
2. Collect the same data sets for competitors.
3. Design a question to be tested:
  - EX: How does Mecha Car value compare with competitors (in this study we may look at cost, mileage and maintence)
  - EX: How does Mecha Car performance compare with competitors (in this sutdy we may look at MPG and Horse Power)
4. Merics:  If we are going to look at Mecha Car value we would want to see which models have the lowest purchase price, the best MPG and the lowest maintence, then compare those with similar cars for competators.  We can compare this based on the type of car compact/suv/hybrid, etc or the type of drivetrain 4wd, rear wheel drive and front wheel drive.  

Separately, Mecha may want to look at the field of cars and design a new car to maximize profits, to do this, Mecha would want to determine which metircs are rated the highest by consumers when purchasing a new car (see list above), then run some data tests to determine where to focus their R&D on a new car.  Below is a potential analysis that "Mecha" could run when producing a new car to add to their line up that would get the most MPG, and where that would fit into the competition.  "Mecha" would want to design a car that is inexpensive, but also gets high MPG. They may produce this study:
- Null hypothesis: cars that cost more have a higher MPG
- Alternative Hypothesis: car cost has no impact on MPG
- For this we'd run a linear regression on car cost vs MPG
- Data wise we'd need a data set that had the cost of cars and the miles per gallon for each car model.

After this we could determine if cost impacts MPG, if not, then we can look at other metrics vs MPG and continue to refine our testing until we determine the greatest factors that impact MPG.  

While doing this, we may want to abandon single linear regression and move to a multiple regression model in order to determine the overall most impactful factors on MPG (assuming that MPG is the end-all-be-all consumer factor), and then design a car that focuses on meeting/exceeding those determined factors from our regression test.

