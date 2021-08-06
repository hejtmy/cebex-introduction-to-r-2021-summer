# Working directories ------
getwd()

# relative path
df <- read.csv("data/loading-examples/example-sep.txt")

setwd("../")
getwd()

# absolute path
df <- read.csv("F:/Projects/Courses/cebex-introduction-to-r-2021-summer/data/loading-examples/example-sep.txt")

setwd("F:/Projects/Courses/cebex-introduction-to-r-2021-summer/")
getwd()
df <- read.csv("data/loading-examples/example-sep.txt")

# Libraries -------
install.packages("tidyverse")

sessionInfo()
library(dplyr)
sessionInfo()

# Basic coding ------
5 * 5
5*5
5*                5

## expressions ----
(5 * 5) / (10 + 1)

## variables -----

# GOOD assignment with <-!
num <- (5 * 5) / (10 + 1)

#BAD assignment with =!
num = (5 * 5) / (10 + 1)

my_age <- 31
my_age * my_age

31 * 31

pi

# valid names
a3 <- 10
aPI <- 15
api <- 12

API <- 10

# reserved symbols
api*cko <- 10

#-*/+:;

# good vs bad naming
myagewhenihadmyfirstbaby <- 31
my_age_when_i_had_my_first_baby <- 31

a <- 10
b <- 15
# age when I had my first baby
c <- 31

my_age_when_i_had_my_first_baby <- 32

## deleting variables
rm(a3)
rm(a)

my_age <- 31
log_age <- log(my_age)

class(my_age_when_i_had_my_first_baby)

# function
head(ggplot2::mpg, n = 3)

abs(5)
abs(-5)

log(5)

value <- -5
abs_value <- abs(value)
log(abs_value)

log(abs(-5) + 10010)

my_name <- "Lukas"
tolower(my_name)
upper_my_name <- toupper(my_name)


#"hello" + "world"

paste("hello", "world")
?paste
help(paste)

paste("hello", "world", sep = "")
paste("hello", "world", 5, 10, sep = "")

read.table("data/loading-examples/example-sep.txt", sep=",", header=TRUE)

head(ggplot2::mpg, 5)

# rnorm

?rnorm
# 100 numbers from normal distribution with mean of 50 and standard deviation of 15
set.seed(2021)
normal_values <- rnorm(100, 50, 15)
normal_values

set.seed(2021)
rnorm(100, mean=50, sd=15)
rnorm(100, 50)
rnorm(100, 0, 15)
rnorm(100, sd=15)


set.seed(2021)
normal_values <- rnorm(100, 50, 15)
hist(normal_values)


## Math operations -----
7 %% 6
6 %% 6
5 %% 6
4 %% 6
3 %% 6

5 %% 100
10 %% 100
101 %% 100

1^6
2^3
4^6
4**6


## Logical operations

<
>
==
!=
  
5 < 6
6 < 6
6 == 6

# how to do less or equal
6 <= 6 #TRUE
5 >= 6 #TRUE

# how to do greater or equal

5 != 6
6 != 6

my_age <- 31
is_above_30 <- my_age > 30

# OR and AND

is_smoking <- FALSE
my_age <- 31

# AND
is_smoking & (my_age > 30)

# OR
is_smoking | (my_age > 30)


1stdayeachweek <- "Monday"

## Unfinihsed expressions
5 * # my_age

5 * 
  my_age <- 32

head(ggplot2::mpg)

my_histogram <- #31
hist(ggplot2::mpg$cty)






