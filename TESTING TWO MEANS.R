library(ggplot2)
library(car)
head(WeightLoss)
table(WeightLoss$group)
qplot(group,wl2,data = WeightLoss,geom = "boxplot",fill = group)
anova <- aov(wl2~group,data = WeightLoss)
summary(anova)
pairwise.t.test(WeightLoss$wl2,as.vector(WeightLoss$group))

mean(mtcars$mpg[mtcars$am == 0])
mean(mtcars$mpg[mtcars$am == 1])
mtcars.copy <- mtcars
mtcars.copy$transmission <- ifelse(mtcars$am == 0,"auto","manul")
mtcars.copy$transmission <- factor(mtcars.copy$transmission)
qplot(transmission,mpg,data = mtcars.copy,geom = "boxplot",fill = transmission)
automatic.mpg <- mtcars$mpg[mtcars$am == 0]
manual.mpg <- mtcars$mpg[mtcars$am == 1]
t.test(automatic.mpg,manual.mpg,alternative = "less")
t.test(mpg~am,data = mtcars,alternative = "less")

