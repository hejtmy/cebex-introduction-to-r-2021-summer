# Create a vector of participant numbers 1 to 100
# :, seq
ids <- seq(from=1, to=100, by=1)
  
# set the seed so that we have the same information
set.seed(100)

# Randomize a favorite icecream from (vanilla, chocolate, mango) for each participant
# SAMPLE
favorite_icecream <- sample(c("vanilla", "chocolate", "mango"), length(ids), replace = TRUE)
  
#' Create a random vector of number of books read last year drawn from a normal distribution with 
#' a mean of 10 and sd of 3
# RNORM
n_books_read <- rnorm(length(ids), 10, 3)

# fix the "issues" with this random vector
n_books_read <- round(n_books_read)
sum(n_books_read > 0)

# ANALYZE!
  
# how many people like vanilla?
sum(favorite_icecream == "vanilla")
table(favorite_icecream)

# what is the average number of books read for the last 25 people?
mean(n_books_read[76:100])
mean(tail(n_books_read, 25))
mean(n_books_read[(length(n_books_read)-24):length(n_books_read)])

# how many books in total did chocolate people read?
# who likes chocolate? 
i_chocolate_people <- which(favorite_icecream == "chocolate")
which(favorite_icecream == "chocolate")
favorite_icecream == "chocolate"

#
sum(n_books_read[i_chocolate_people])
sum(n_books_read[favorite_icecream == "chocolate"])


# functions ()

# control structures {}

# access parameters []


