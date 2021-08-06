head(iris)

vec_num <- c(1, 2, 3, 4, 5,6,7,100)
class(vec_num)

number <- 5

vec_num <- c(vec_num, 5)
vec_num

vec_num <- c(vec_num, vec_num)
vec_num
?c

## try combining this
c(5, TRUE, 1, 10)

c(5, "hello", TRUE)

c(as.character(5), "hello", TRUE)

c(1, 2, 3, NA, 10)

c(1, 2, NULL, NA, TRUE)

## 
?seq

even_numbers <- seq()

seq(1, 99, 2)
seq(1, 99, 0.1)

?rep
rep(1, 3)
rep(seq(1,5), 3)

gender <- c(rep("female", 50), rep("male", 50))
rep(c("female", "male"),50)

# Create vector of 5 cities called cities with 5 EU capitals. It must include Prague
cities <- c("Bratislava", "Stockholm", "Paris", "Prague", "Berlin")
countries <- c("Slovakia", "Sweeden", "France", "Czechia", "Germany")
# Create vector temperatures of human temperature from 36.3 to 40.5 with 0.1 steps
temperatures <- seq(36.3, 40.5, 0.1)
# create vector roulette_numbers with numbers from 0 to 36
roulette_numbers <- seq(0, 36)
# Create vector called roulette_colors with “green” and then 18 times “red” and “black”
roulette_colors <- c("green", rep(c("red", "black"), 18))

length(roulette_colors)

## Selecting by index ----

roulette_colors[1]
roulette_colors[2]

value_of_interest <- 3
roulette_colors[value_of_interest]

value_of_interest <- c(1,3,5)
roulette_colors[value_of_interest]

## out of scope
roulette_colors[50]

# spin the roulette 5 times
set.seed(100)
results <- sample(roulette_numbers, 35, replace = TRUE)
results
table(results)
table(sample(roulette_numbers, 35))
table(sample(roulette_numbers, 50))

set.seed(100)
results <- sample(roulette_numbers, 5, replace = TRUE)
roulette_colors[results + 1]

results + 1
results * 10

roulette_colors[c(1, 5)]

## Select by logical -----
numbers <- c(1,5,10)
selection_vector <- c(FALSE, FALSE, TRUE)

numbers[selection_vector]

numbers > 8

black_colors <- roulette_colors == "black"
roulette_colors[black_colors]
roulette_numbers[black_colors]

temperatures_below39 <- temperatures[temperatures < 39]
temperatures_below39

cities != "Prague"
cities_without_prague <- cities[cities != "Prague"]
cities_without_prague

cities == "Paris"
countries[cities == "Paris"]

## which -------
cities == "Paris"
which(cities == "Paris")

i_not_paris <- which(cities != "Paris")
countries[i_not_paris]

head(iris)
i_large_sepal_length <- which(iris$Sepal.Length > 5)
iris[i_large_sepal_length, ]

iris[iris$Sepal.Length > 5, ]

# iris
species <- iris$Species
# 1. SELECT all virginica
virginica <- iris$Species[iris$Species == "virginica"]
virginica <- species[species == "virginica"]
# 2. select everything else, then virginica
not_virginica <- iris$Species[iris$Species != "virginica"]
not_virginica
# 3. Select all sepal.length > mean(sepal length)
mean(iris$Sepal.Length)
sepal_above_average <- iris$Sepal.Length[iris$Sepal.Length > mean(iris$Sepal.Length)]

avg_sepal_length <- mean(iris$Sepal.Length)
sepal_above_average <- iris$Sepal.Length[iris$Sepal.Length > avg_sepal_length]

# %in%
favorite_cities <- c("Prague", "Montreal")
cities %in% favorite_cities

large_species <- iris$Species[iris$Sepal.Length > 6.8]
large_species
iris$Species %in% large_species

### negative indexing -----
letters[-1]

iris$Species[iris$Species %in% large_species]
iris$Species[!(iris$Species %in% large_species)]

cities[cities != "Prague"]

!TRUE
!c(TRUE, FALSE)

### shorthand 1:5 -----
seq(1,100,1)

1:100
5:7

iris$Species[1:50]

# Vector functions -----

length(cities)
#last element
cities[length(cities)]
#last three elements
i_last <- length(cities)
i_start <- length(cities)-2
cities[i_start:i_last]

tail(cities, 3)
head(cities, 2)

rev(roulette_colors)

### Unique
unique(roulette_colors)
unique(large_species)

### Table
table(large_species)
table(ggplot2::mpg$manufacturer)

summary(ggplot2::mpg$manufacturer)
summary(iris$Sepal.Length)

## Numeric functions
iris$Sepal.Length

mean()
quantile()
median()
sum()
round()
min()
range()
sd()

# get a sum of all sepal lengths for top 10 percent
q_top10 <- quantile(iris$Sepal.Length, 0.9)
top10_sum <- sum(iris$Sepal.Length[iris$Sepal.Length >= q_top10])
# get a sum of all sepal length for bottom 10 percent
# q_bottom10 <- 
# bottom10_sum <-

hist(iris$Sepal.Length, breaks = 20)

## Character functions
toupper("Lukas")
toupper(cities)
toupper(iris$Species)

nchar("Lukas")
nchar(cities)

continents <- c("north america", "south america", "europe", "middle america")
grepl("america", continents)

continents <- c("north America", "south america", "europe", "MIDDLE AMERICA", "america west")
grepl("america", tolower(continents))

## REGULAR EXPRESSIONS

paste("america", "west")
paste(cities)
paste(cities, collapse = "")

## Vector math ----
1:5 + 1 

1:5 + 1:5
1:6 + 1:2

cities[c(TRUE, FALSE)]

vec_num <- 1:10
# 1 2 3 4 5 6 7 8 9 10
vec_num[c(TRUE, FALSE)]
# T F T F T F T F T F


vec_num <- 1:11
#1 2 3 4 5 6 7 8 9 10
vec_num[c(TRUE, FALSE)]
#T F T F T F T F T F T

## 
na_vec <- c(1,3,5,NA,6)
which(is.na(na_vec))
na_vec[!is.na(na_vec)]

