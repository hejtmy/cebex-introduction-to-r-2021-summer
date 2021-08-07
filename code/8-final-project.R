# load decathlon data
df_decathlon <- read.table("data/decathlon.csv", sep = ";", header = TRUE,
                           dec = ",", encoding = "UTF-8")
df_decathlon[,c(16,17)] <- NULL

# investigate the data
summary(df_decathlon)

# choose 3 values to check their distributions


# plot histograms of these values
par(mfrow = c(3,1))
hist(df_decathlon$ShotPut, breaks=7, main="Hisogram of Shot Put throws")
hist(df_decathlon$Javelin, breaks = 7, main="Distribution of Javelin throws")
hist(df_decathlon$Discus, breaks=7, main="Histogram of Discus throw")

# plot paired plots
pairs(df_decathlon[,6:15])

# select one pair of variables
plot(df_decathlon$ShotPut, df_decathlon$Javelin)
cor(df_decathlon$ShotPut, df_decathlon$Javelin)

# create a scatter plot + regression line
lm_shot_javelin <- lm(ShotPut ~ Javelin, data = df_decathlon)

par(mfrow = c(1,1))
plot(df_decathlon$Javelin, df_decathlon$ShotPut)
abline(lm_shot_javelin)

# Does some variabled affect Points to a large degree? (does it correlate, regress?)
cor() #function for correlation
pairs(df_decathlon[,c(1, 6:15)])

# Do some pairs of disciplines correlate strongly/more strongly than others?

cor(df_decathlon[,c(1, 6:15)])

lm_points_100 <- lm(Points ~ X100meters, data = df_decathlon)
summary(lm_points_100)

lm_points_longjump <- lm(Points ~ LongJump, data = df_decathlon)
summary(lm_points_longjump)



