cat("\014")
packages = "datasets"
print("Training Data\n")
head(mtcars)
#Fit the Simple Linear Model using lm()
model <- lm(mpg~wt,data = mtcars)
plot(mtcars$wt,mtcars$mpg,main = "Simple Linear Regression(Mileage and Weight)")
abline(model,col = "red")
summary(model)

print("Testing Data")
pred_mpg = predict(model,newdata = data.frame(wt = 6))
cat("Mileage per Gallon(Prediction) ",pred_mpg)
#model coefficient
coeff = model$coefficient
#y-intercept
cat("Y-Intercept b0 : ",coeff[1])
#coefficient
cat("Coefficient : ",coeff[2])

#Multiple Regression
model <- lm(mpg ~ wt+hp,data = mtcars)
summary(model)
coef(lm(mpg ~ wt+hp,data = mtcars))
coef(lm(mpg ~ wt,data = mtcars))
coef(lm(mpg ~ hp,data = mtcars))
x <- predict(model,newdata = data.frame(wt = 2.5, hp = 275))
x
