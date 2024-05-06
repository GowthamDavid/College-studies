head(mtcars)
u1 <- unique(mtcars$carb)
cat("Carburetors : ",u1)
t1 <- table(mtcars$carb)
t1
barplot(t1,xlab = "Air temperatures",main = "Frequency Distribution of MTcars Carburetors",ylab = "Frequency")
head(airquality)
u2 <- unique(airquality$Temp)
cat("Temperatures : ",u2)
t2 <- table(airquality$Temp)
t2
barplot(t2,xlab = "Air Temperature",main = "Frequency Distribution of AirQuality",ylab = "Frequency")
t3 <- table(cut(airquality$Temp,9))
t3
barplot(t3,xlab = "Range of AirQuality",ylab = "Frequency",main = "Frequency Distribution of range of AirQuality")
