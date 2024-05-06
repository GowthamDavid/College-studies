head(mtcars,32)
co = cov(mtcars$wt,mtcars$mpg)
print("Covariance")
co
cc = cor(mtcars$wt,mtcars$mpg)
print("Pearson's Corelation Coefficient")
cc
ccs = cor(mtcars$wt,mtcars$mpg,method = "spearman")
print("Spearman Corelation Coefficient")
ccs
library(ggplot2)
scatter.smooth(mtcars$wt,mtcars$mpg,main = "Scatterplot",xlab = "Car Weight", ylab = "Mileage")
if(cc>0){
  print("Relationship b/w Car Weight and Mileage is Positive")
}else{
  print("Relationship b/w Car Weight and Mileage is Negative")
}
