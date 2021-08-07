# Exploratory graphs

## Load the world happiness dataset
# select only year 2017 and save it to df_2017

## Histogram ------

# Defining breaks

# Specificing custom breaks

# Changing axis labels

# limiting what is shown

## Create a histogram between 0 an 0.15 with at 15 breaks
# hist_breaks <- 0.00,0.01,0.02,0.03,.....0.015, 100

## Changing colors

## Create a histogram of Scores in 2017

# Label axes properly

# color the graph nicely (change both col and border)

# focus only on values between 4 and 6

## Histogram with density lines


## Boxplots --------

# Setting names


# defining colors


### FORMULA


## Scatter plots (point charts) --------


# points vs line


## Type of points
?points

## Adding in features - adding new points

## PAIRS -----
pairs

## Adding regression lines------

## Create a scatter plot of GDP on x axis and score on Y axis for year 2017
# Add "red" points to the plot for the year 2018

## Bar charts ------

## Adding colors, names, etc.


## Adding legends 


# Multiple plots ----
par(mfrow = c(1,2)) # first two plots are going to be next to each other


## PLOT 1

## PLOT 2


par(mfrow = c(1,2)) # first two plots are going to be next to each other
## PLOT 1

## PLOT 2


## Adding common titles
mtext()
## Outer margin
