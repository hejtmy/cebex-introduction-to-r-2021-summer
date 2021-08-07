# Exploratory graphs
df_happiness <- read.table ("data/world-happinness/world-happiness.csv",
                            header=TRUE, sep=",")
table(df_happiness$country)
## Load the world happiness dataset
# select only year 2017 and save it to df_2017
df_2017 <- df_happiness[df_happiness$year == 2017, ]
df_2017$X <- NULL

summary(df_2017)
str(df_2017)
head(df_2017)

table(df_2017$country)

# Historam ------
hist(df_2017$GDP)


# Defining breaks
hist(df_2017$GDP, breaks = 25)
hist(df_2017$GDP, breaks = 100)

# Specificing custom breaks
breaks <- c(0,0.5,1,2)
hist(df_2017$GDP, breaks = breaks)

hist_break <- c(0, seq(from = 0.5, to = 2.0, by = 0.1))
hist(df_2017$GDP, breaks = hist_break)

hist_breaks <- c(0, seq(median(df_2017$GDP), 2.0, by = 0.1))
hist(df_2017$GDP, breaks = hist_breaks)


hist_breaks <- c(0, 0.5, 1, 2)
hist(df_2017$GDP, breaks = hist_breaks)

# Colors
hist(df_2017$GDP, breaks = 25, col = "#FF26E8")
hist(df_2017$GDP, breaks = 25,
     col = "#FF26E8",
     border = "#6BFF62")

# plot corruption
# select appropriate break number
# select appropriate color for corruption histogram
hist(df_2017$corruption, breaks=15, col="red", border="white")
hist(df_2017$corruption, breaks = 35,
     col = "#D13E3E",
     border = "#AFA7A7")
hist(df_2017$social_support, breaks=35, col="white", border="purple",
     main ="Social Support")


df_2017$country[df_2017$corruption < .05]

# Changing axis labels
hist(df_2017$corruption, breaks=15, col="red",
     border="white", main = "Histogram of corruption",
     xlab = "How much corruption affect happiness in the state",
     ylab="")

# limiting what is shown
hist(df_2017$corruption, breaks = 35,
     col = "#D13E3E",
     border = "#AFA7A7", xlim = c(0.2, 1))
hist(df_2017$corruption, xlim = c(0.2*0.9, max(df_2017$corruption)*1.1))

# Label axes properly

# focus only on values between 4 and 6

# Histogram with density lines
hist(df_2017$corruption, probability = TRUE, breaks=35)
lines(density(df_2017$corruption))


## Create a histogram of scores
# add density line
# set the axes correctly
hist(df_2017$score, breaks = 15, col = "white", probability = TRUE, 
     main = "Histogram of score distribution", xlab= " happiness score",
     ylab ="")
lines(density(df_2017$score))

## Boxplots --------
boxplot(df_2017$GDP)


# Setting names
boxplot(df_2017$GDP, df_2017$generosity, df_2017$health,
        xlab = "values", names=c("GDP", "generosity", "health"))

# defining colors
boxplot(df_2017$GDP, df_2017$generosity, df_2017$health,
        xlab = "values", names=c("GDP", "generosity", "health"),
        col = c("green", "red", "blue"))

# FORMULA
boxplot(df_happiness$GDP~df_happiness$year)

boxplot(df_2017$GDP~(df_2017$corruption > 0.3),
        names=c("Does not have corruption", "Has large corruption"),
        xlab = "", ylab="GDP",
        main = "GDP based on corruption in the country")


## Scatter plots (point charts) --------
plot(df_2017$freedom, df_2017$corruption)

# points vs line
plot(rownames(datasets::airquality),
     datasets::airquality$Temp, type="p",
     xlab= "Observation", ylab = "Temperature")

plot(rownames(datasets::airquality),
     datasets::airquality$Temp, type="l",
     xlab= "Observation", ylab = "Temperature")

## Select data for your country from df happiness
df_czech <- df_happiness[df_happiness$country=="Czech Republic",]
plot(df_czech$score~df_czech$year, type="l", xlab="",
     ylab="", main="Czech happiness score 2015-2019")
df_sweden <- df_happiness[df_happiness$country=="Sweden",]
lines(df_sweden$score~df_sweden$year)

## Type of points
#?points

## Adding in features - adding new points

## PAIRS -----
#pairs

## Adding regression lines------

## Create a scatter plot of GDP on x axis and score on Y axis for year 2017
# Add "red" points to the plot for the year 2018

## Bar charts ------

## Adding colors, names, etc.


## Adding legends 


# Multiple plots ----
#par(mfrow = c(1,2)) # first two plots are going to be next to each other


## PLOT 1

## PLOT 2


#par(mfrow = c(1,2)) # first two plots are going to be next to each other
## PLOT 1

## PLOT 2


## Adding common titles
#mtext()
## Outer margin
