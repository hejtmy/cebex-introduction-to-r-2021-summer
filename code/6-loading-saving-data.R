# Relative vs absolute paths -----
getwd()
setwd("data")
getwd()

df_example_sep <- read.table(file.path("data", "loading-examples", "example-sep.txt"),
                         sep=",")

read.table("F:/Projects/Courses/cebex-introduction-to-r-2021-summer/data/climbing.csv",
           sep=";")

read.table("data/climbing.csv", sep=";")
setwd("data")
read.table("climbing.csv", sep=";")
setwd("..")

df_example_sep <- read.table(file.path("data", "loading-examples", "example-sep.txt"),
                         sep=",")
# escape character, Mac+Linux vs Win
hamlet_speech <- "Be or not to be, that\'s a question"
text <- "This so called \"expert\" made a mess of my kitchen"

setwd("data\\loading-examples")
file.path("data", "loading-examples")

## One step up?
setwd("..")

# Listing files -----
list.files()
list.files("data")
list.files("data\\loading-examples")
list.files(file.path("data", "loading-examples"))

# Reading files -----
df_example_sep <- read.table(file.path("data", "loading-examples", "example-sep.txt"),
                            sep=",")
df_example[1,]
str(df_example)

df_example_row <- read.table(file.path("data", "loading-examples", "example-row.txt"),
                            sep=";", header = TRUE)

df_example_dec <- read.table(file.path("data", "loading-examples", "example-dec.txt"),
                             sep=";", header = FALSE, dec=",")

as.numeric(df_example_dec$V4)

df_example_missing <- read.table(file.path("data", "loading-examples", "example-missing.txt"),
                             sep=",", header = TRUE)
height <- as.numeric(df_example_missing$height)
df_example_missing[is.na(height),]

df_example_error <- read.table(file.path("data", "loading-examples", "example-error.txt"),
                               sep=",", header = TRUE, fill = TRUE)
tail(df_example_error, 3)

df_example_werid_header <- read.table(file.path("data", "loading-examples", 
                                                "example-weird-header.txt"),
                               sep=",", header = TRUE, skip = 3)


df_happiness <- read.table ("data/world-happinness/world-happiness.csv",
                            header=TRUE, sep=",")
str(df_happiness)
df_happiness_coutries <- read.table ("data/world-happinness/world-happiness-country-regions.csv",
                                     header = TRUE, sep=",")
str(df_happiness_coutries)

# Saving files -------
# get only results for year 2019
df_happiness_small <- df_happiness[df_happiness$year == 2019, ] #only year 2019
df_happiness_small <- df_happiness_small[df_happiness_small$rank <= 50, ] #only ranks 1-50

df_happiness_small <- df_happiness[(df_happiness$year==2019) & (df_happiness$rank <51),]

write.table(df_happiness_small, "smaller_happiness.csv", sep=";",
            row.names = FALSE)

## Practice ------
df_decathlon <- read.table("data/decathlon.csv", sep = ";", header = TRUE,
                           dec=",", encoding = "UTF-8")

str(df_decathlon)
range(df_decathlon$Discus)

df_climbing <- read.table("data/climbing.csv", sep=";", header = TRUE)

df_decathlon_points <- read.table("data/Decathlon-points.csv", sep=";",
                                  header = TRUE)
