library(ggplot2)

mpg <- ggplot2::mpg

## Descriptives ----
head(mpg)
str(mpg)
summary(mpg)

### Adding variables ----
mpg$cty_kml <- mpg$cty * 0.42514370

## Plots ----

### Plotting frequency of car classes
g <- ggplot(mpg, aes(class))
g + geom_bar()

### Plotting boxplot of city miles per gallon
g <- ggplot(mpg, aes(manufacturer, cty_kml))
g + geom_boxplot()

cty_man_aov <- aov(cty_kml ~ manufacturer, mpg)
cty_man_aov
summary(cty_man_aov)

