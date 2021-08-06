# characters -------
my_name <- "Lukas"
class(my_name)
my_age <- "31"
class(my_age)


# logical ------
older_than_30 <- TRUE

TRUE
FALSE

123121321
T
F

TRUE
TRU <- "YES"
TRUE <- "YES"
T <- "YES"

T <- read.table("tree_data.csv")

(5 > 4) == T

class(older_than_30)


## Missing values -------
missing_number <- NA
is.na(missing_number)

failed_result <- NULL

password <- "password"
password <- NULL
is.null(password)


## lists ----
my_age <- 31
my_gender <- "male"
my_family_size <- 3
my_language <- "czech"

me <- list(name = "Lukas", 
           age = 31,
           gender = "male",
           language = "czech")

me_unnamed <- list("Lukas", 31, "male", "czech")

not_me <- list(name = "Maria", 
           age = 30,
           gender = "female",
           language = "spanish")

me_error <- list(age = 31,
           gender = "male",
           language = "czech")


me$name
# DOUBLE SQUARE BRACKETS
me_unnamed[[1]]
me[[1]]
me_error[[1]]

child <- list(name = "Elizabeth", age = 7)
me$children <- child

## Create list of me (name, age, gender)
## add child (name, age, gender)

## access child name from ME
me$children$name

# Unexpected behaviour
me$a
#
me[["a"]] #nice example of NULL
me[["age"]]

variable_of_interest <- "age"
me[[variable_of_interest]]

## Matrix

na_matrix <- matrix(nrow = 3, ncol = 3)

na_matrix[1, 3] <- 1
na_matrix

# jsut row
na_matrix[1, ]
# just columns
na_matrix[, 1]

## 
head(iris)
str(iris)

iris$Species
iris[["Species"]]

iris[1,]
iris[,1]

## factors
class(iris$Species)
levels(iris$Species)
as.numeric(iris$Species)

mpg <- ggplot2::mpg
class(mpg$manufacturer)
fac_manufacturer <- factor(mpg$manufacturer)
as.numeric(fac_manufacturer)

fac_manufacturer == "audi"

## CONVERSIONS
as.numeric("5")
as.character(5)
as.logical()

# Convert to logical values
"hello"
1
0
5

as.logical(1)
as.logical(-5)
as.logical("hello")
as.numeric("five")

1+1

5 + TRUE

# numeric - > logical -> character
paste(5, "hello", TRUE)

1 == TRUE

"TRUE" == TRUE

value <- "true"
(value == "TRUE") == TRUE

## Create a list
# number of weeks in a year 52
# number of days in a year

year_info <- list(n_days = 365, n_weeks = 52)

# calculate how many full 30 day months are in this list

year_info$full30months <- floor(year_info$n_days/30)

