head(iris)

vec_num <- c(1, 2, 3, 4, 5,6,7,100)
class(vec_num)

number <- 5

vec_num <- c(vec_num, 5)
vec_num

vec_num <- c(vec_num, vec_num)
vec_num
?c

## try combinding this
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
virginica <- .....
# 2. select everything else, then virginica
not_virginica <- 
# 3. Select all sepal.length > mean(sepal length)
sepal_above_average <- .....