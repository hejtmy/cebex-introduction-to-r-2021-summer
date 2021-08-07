# Relative vs absolute paths -----
getwd()
setwd("data")
getwd()

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
                             sep=";", header = TRUE)

df_example_missing <- read.table(file.path("data", "loading-examples", "example-missing.txt"),
                             sep=";", header = TRUE)
