# Homeworks

## Day 1

### Packages
Name the file [name]-packages.pdf

Choose a letter of the alphabet randomly and find somewhat relevant package at https://rdrr.io/ or go to https://www.r-pkg.org/ and browse through trending packages or find one that you find interesting.

1. Check the package description
2. Try to understand what the package is about - spend about 15-30 minutes with trying to comprehend what the package tries to solve
3. Install the package - try out some of it’s functionality as it is outlined in the documentation
4. *(Prepare a brief report for us)*
5. Paste parts of functioning code which you tried - things from examples, vignettes etc.
6. Write a short report which you will submit
    a. what the package is about?
    b. What is the typical usecase fo the package.
    c. Did you understand the documentation? If not, why was it difficult to understand? What was easy to understand?

### Asking for help
Name the file [name]-asking-for-help.pdf

Imagine the imagionary function `calculate_correlation(series_a, series_b)` from a package named "fictionalcor" is 
a. returning zero for a two series for which function `cor()` returns 0.75.
b. sometimes returns NA (Missing value)
c. It sometimes returns values above 1. 

Formulate proper questions with minimal working example, which you would post on stack overflow forums. Include all necessary information. If unsure about something (package version, r version), make it up :)

### Code style
Study the https://style.tidyverse.org/ section 1. and section 2.

Name the file [name]-code-style.R

1. Prepare the following examples and mix correct and incorrect together. We will go over some of them tomorrow.
    a. Prepare 5 examples of correct and incorrect names for files. 
    b. Prepare 5 examples of correct and incorrect names for variables. 
    c. Prepare 5 exmaples of correct and incorrect spacing rules in relation to commas, parentheses and operators (+,/ etc.).
2. What is the rule about using semicolons?
3. What is the rule about line length? How can you set the visual mark in Rstudio?
4. What types of quotes can you use in defining characters and which style you should be using?
5. Rewrite the following code with a valid coding style

```r
#days in the year
value = 365
#days in week
value2 =7
#weeks in year
value3= round(value/ value2 , digits=0)
message= paste('Year has ', value , ' days. Each week has ', value 2, ' days. This means that the year has ',value3,' weeks.')
```

### Working with vectors
Name the file [your-name]-zodiac-vectors.R.

Put all the code inside the R file. You don't need to actually answer the questions, just submit code which will correctly calculate them.

Each of these should be written in code on a single line.

1. Create a vector of years between 1924 to 2020
2. Create a vector of chinese zodiac for each year, beginning with rat, repeating 10 times (120 years).
3. Shorten the zodiac vector so it is only of the same length as the years vector. (Select only certain values)
4. What years are “horse” years?
5. What sign was year 1987?
6. What is the sum of years for the “rooster”?
7. What is the median year for the “dragon”
8. What is the 3rd_year of a goat?

## Day 2

### Creating custom dataset
Name the file [your-name]-custom-dataset.R.

Put all the code inside the R file. You don't need to actually answer the questions, just submit code which will correctly calculate them.

1. Create a data.frame with three columns - day, month, week, weekday, day_of_the_week
2. Set the day to 1:365
3. Set the months to their respective months - it is non skip year, 365 days
4. Set the week to properly calculate weeks (each 7 days. not respecting months) and weekday to be 1-7
5. Set the day_of_the_week to follow the days of the week - Monday, Tuesday etc.
6. Set seed to 2020 and randomize a column world_happinness to have normal distribution with average 10 and sd 2.
7. Select rows which contain only mondays.
8. What is the average happiness on Mondays?
9. What is the average happiness in the 40th week?

### Analysing iris dataset

Name the file [your-name]-iris-exploration.R. 

Put all the code inside the R file. You don't need to actually answer all the questions (except question 3), just submit code which will correctly calculate them.

1. Read about the iris dataset (`?iris`)
2. Investigate the dataset using head, str, tail etc.
3. What types of variables the columns are?
4. Does the dataset have rownames? If yes, what are those?
5. What si the median, mean and variance of Sepal.Width?
6. Get the mean Sepal.Length of virginica?
7. What is the min and max of Petal.Length of Setosa?
8. What are the counts of various Species which have Sepal.length above 5?

### Plotting multiple plots and setting features

Name the file [your-name]-multiple-plots.R

All plots should be legible
1. Load the world-happiness.csv dataset. Select only year 2019 data.
2. plot four images in a 2x2 grid. 
3. Images 1 and 3 should be histograms of Score and GDP respectively.
4. Image two should be a scatter plot of GDP ~ Score. Set point type to be a square and it's color is white.
5. Add linear regression abline with width of 3. 
6. Image 4 contains boxplots of GDP and Score values - set the color of the outline and other graph setting
![](img/multiple-1.png)

### Inferential plots

Name the file [your-name]-inferential-plots.R

1. Load data ggplot2::mpg
2. Plot histograms of compact cars' and pickups' highway miles per gallon next to each other. Define breaks to be same in both cases. Bonus points - label and color them appropriately add density lines to both
![](img/inf-1.png)
3. Calculate mean city miles per gallon for midsize and suv cars and plot them side by side using barplot. Label and color them appropriately
![](img/inf-2.png)
4. Create pairs scatterplots of city miles per gallon, highway miles per gallon and displacement and color points using the class. Plot only compact, 2seater and minivans. For bonus points (which might require you to do a bit of googling), add legend to the plot determining colors of each of car classes.
![](img/inf-3.png)
