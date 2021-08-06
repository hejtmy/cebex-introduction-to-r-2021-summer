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
# Create vector temperatures of human temperature from 36.3 to 40.5 with 0.1 steps
temperatures <- seq(36.3, 40.5, 0.1)
# create vector roulette_numbers with numbers from 0 to 36
roulette_numbers <- seq(0, 36)
# Create vector called roulette_colors with “green” and then 18 times “red” and “black”
roulette_colors <- c("green", rep(c("red", "black"), 18))

length(roulette_colors)

roulette_colors[1]
roulette_colors[2]

value_of_interest <- 3
roulette_colors[value_of_interest]

value_of_interest <- c(1,3,5)
roulette_colors[value_of_interest]

## out of scope
roulette_colors[50]

# create vector called weekdays with each day of the week
# weekdays <- 
# create vector called weekdays_10 which is days in 10 weeks consecutively
# weekdays_10 <-
# Crete vector of odd numbers call odd_numbers with numbers from 1 to 99
# odd_numbers <- 
# Create vector of length 100 called true_false (T, F, T, F, T, F, T, F …)
# true_false <- 