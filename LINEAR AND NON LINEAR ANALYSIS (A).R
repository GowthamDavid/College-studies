head(women,15)
library(ggplot2)
scatter.smooth(women$height,women$weight,main = "Scatterplot",xlab = "Height",ylab = "Weight")
#find the covariance between height and weight
c11 = cov(women$height,women$height)
c12 = cov(women$height,women$weight)
c21 = cov(women$weight,women$height)
c22 = cov(women$weight,women$weight)
#covariance matrix
cm1 = matrix(data = c(c11,c12,c21,c22),nrow = 2,byrow = TRUE)
print("Covariance Matrix")
cm1
#whole dataset covariance matrix
cm2 = cov(women)
print("Covariance Matrix")
cm2

#finding corelation coefficient b/w height and weight
cc11 = cor(women$height,women$height)
cc12 = cor(women$height,women$weight)
cc21 = cor(women$weight,women$height)
cc22 = cor(women$weight,women$weight)
cc1 = matrix(data = c(cc11,cc12,cc21,cc22),nrow = 2, byrow = TRUE)
print("Pearson's Corelation Coefficient")
cc1
#whole corelation coefficient
cc2 = cor(women)
print("Pearson's Corelaton Coefficient ")
cc2
#spearman method
cc3 = cor(women,method = "spearman")
print("Spearman's Corelation Coefficient")
cc3
if(cc11>0)
{
  print("Relationship b/w Women's Weight and Height is Positive")
}else{
  print("Relationship b/w Women's Weight and Height is Negative")
}
