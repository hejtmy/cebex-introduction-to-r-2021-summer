# Data.frame vs list ------
me <- list(name = "Lukas", children = c("Monica", "Eli", "Elizabeth", "Martin"))

me$name
length(me$children)

df <- iris
me <- list(name = "Lukas", child = "George")
df_me <- as.data.frame(me)

people <- list(name = c("Lukas", "Martin"), child = c("Monica", "Teresa"))
df_people <- as.data.frame(people)

df_people[["name"]]

## Main data.frame functions ------
mpg <- ggplot2::mpg
head(mpg)
head(iris)
str(mpg)
tail(mpg)

?mpg

mpg$cyl
mpg[["cyl"]]

# Mean value of cylinders in cars
mean(mpg[["cyl"]])

# Variance of city miles per gallon
var(mpg$cty)

# What is the range of highway miles per gallon
range(mpg[["hwy"]])
c(min(mpg$hwy), max(mpg$hwy))

# What are the unique car manufacturers
unique(mpg[["manufacturer"]])

# What is the amount of unique car manufactures in the dataset !
length(unique(mpg[["manufacturer"]]))

# Median number of cylinders
median(mpg$cyl)
quantile(mpg$cyl, 0.5)

# What is the frequency/counts of different types of cars
table(mpg$class)

mpg$class

variable_of_interest <- "cyl"
mpg[[variable_of_interest]]

for(c in c("cyl", "year")){
  print(mean(mpg[[c]]))
}

mpg$manufacturer



## Subsetting ------

mpg[1,]
mpg[,1]
mpg[,c(1, 5)]
mpg[, "class"]
mpg[, 11]

df_small_mpg <- mpg[, c("class", "hwy", "cty")]

i_subaru <- which(mpg$manufacturer == "subaru")
mpg[i_subaru, ]

i_subaru <- mpg$manufacturer == "subaru"
mpg[i_subaru, ]

?USArrests

str(USArrests)
head(USArrests)

head(iris)
str(iris)

rownames(USArrests)

write.table(USArrests, "usa.csv", sep=",")

iris[1,]
USArrests[c("Alabama", "Hawaii"),]

# What index is Hawaii at?
which(rownames(USArrests) == "Hawaii")
USArrests[11,]
#USArrests$State == "Hawaii"

# What indices/states have murder rate above 10?
USArrests[USArrests$Murder > 10,]
rownames(USArrests)[USArrests$Murder > 10]

# What states have urban population above 75?
rownames(USArrests)[USArrests$UrbanPop > 75]

# States in the top 10 percent in Assault
top10_assault <- quantile(USArrests$Assault, 0.9)
rownames(USArrests)[USArrests$Assault > top10_assault]

rownames(USArrests)[USArrests$Assault > quantile(USArrests$Assault, 0.9)]
# Give me Murder rate and Urban population for 

# 1. Pennsylvania, Oregon and Virginia

# DATA.FRAME[rows (indices or rownames (or logical vector)), columns (indices or colnames)]
USArrests[c("Pennsylvania", "Oregon", "Virginia"), c("Murder", "UrbanPop")]

USArrests[rownames(USArrests) %in% c("Pennsylvania", "Oregon", "Virginia"),
          c("Murder", "UrbanPop")]

# 2. All states which have more than average urban population
average_pop <- mean(USArrests$UrbanPop)
rownames(USArrests)[USArrests$UrbanPop > average_pop]
USArrests[USArrests$UrbanPop > average_pop,]

USArrests$Assault
sort(USArrests$Assault, decreasing = TRUE)

# Which 10 countries were the "worst" in murder rate in 1973
worst_murder <- sort(USArrests$Murder, decreasing = TRUE)[10]
USArrests[USArrests$Murder >= worst_murder,]

# 10 safest countries in assault
safest_assault <- sort(USArrests$Assault, decreasing = FALSE)[10]
USArrests[USArrests$Assault <= safest_assault,]

# Ordering -----------------

USArrests[c(1,1,1),]
head(USArrests)
USArrests[c(3,2,1),]

rev(1:50)
USArrests[rev(1:50),]

USArrests$Assault
order(USArrests$Assault)

USArrests[order(USArrests$Assault),]
USArrests[order(USArrests$Assault, decreasing = TRUE),]

# Output first 6 countries with the most population
tail(USArrests[order(USArrests$UrbanPop),], 6)
head(USArrests[order(USArrests$UrbanPop, decreasing = TRUE),], 6)

# Output the safest 5 countries in relation to assault rates
head(USArrests[order(USArrests$Assault),], 5)

# Complex subsetting -------------------

#|
#&

head(USArrests[order(USArrests$Murder | USArrests$Assault), ], 10)

order(USArrests$Murder | USArrests$Assault)
USArrests$Murder | USArrests$Assault


# Select country which is either in bottom 10 in murders or assault
worst_in_murder <- rownames(USArrests)[order(USArrests$Murder, decreasing = TRUE)][1:10]
worst_in_assault <- rownames(USArrests)[order(USArrests$Assault, decreasing = TRUE)][1:10]

(rownames(USArrests) %in% worst_in_murder)
(rownames(USArrests) %in% worst_in_assault)
(rownames(USArrests) %in% worst_in_murder) | (rownames(USArrests) %in% worst_in_assault)

sum((rownames(USArrests) %in% worst_in_murder))
sum((rownames(USArrests) %in% worst_in_murder) | (rownames(USArrests) %in% worst_in_assault))

View(data.frame(country = rownames(USArrests),
  is_worst_murder = (rownames(USArrests) %in% worst_in_murder),
           is_worst_assault = (rownames(USArrests) %in% worst_in_assault),
           is_worst_either = (rownames(USArrests) %in% worst_in_murder) |
           (rownames(USArrests) %in% worst_in_assault)))


worst_in_murder <- rownames(USArrests)[order(USArrests$Murder, decreasing = TRUE)][1:10]
worst_in_assault <- rownames(USArrests)[order(USArrests$Assault, decreasing = TRUE)][1:10]
rownames(USArrests)[(rownames(USArrests) %in% worst_in_murder) |
                      (rownames(USArrests) %in% worst_in_assault)]

sort(worst_in_murder)

worst_in_murder <- rownames(USArrests)[order(USArrests$Murder, decreasing = TRUE)][1:10]
worst_in_assault <- rownames(USArrests)[order(USArrests$Assault, decreasing = TRUE)][1:10]

worst_in_either <- c(worst_in_assault, worst_in_murder)
USArrests[unique(worst_in_either),]

# Selecting countries which are in both bottom 10
worst_in_murder <- rownames(USArrests)[order(USArrests$Murder, decreasing = TRUE)][1:10]
worst_in_assault <- rownames(USArrests)[order(USArrests$Assault, decreasing = TRUE)][1:10]

rownames(USArrests)[(rownames(USArrests) %in% worst_in_murder) & #AND
                      (rownames(USArrests) %in% worst_in_assault)]

union(worst_in_assault, worst_in_murder)
intersect(worst_in_assault, worst_in_murder)
USArrests[intersect(worst_in_assault, worst_in_murder),]

#' Select countries which are in the top 10 in Murder and Assault and 
#' Urban population is below average


# Creating custom data frames --------
me <- list(name = "Lukas",
           children = c("Monica", "Eli", "Elizabeth", "Martin"))
data.frame(name = "Lukas",
           children = "Monica")


df_roulette <- data.frame(number = 0:36,
                          color = c("green", rep(c("black", "red"), 18)))
