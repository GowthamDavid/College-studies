mvtrain <- function(hwdata)
{
  hv <- vector(mode = "numeric", length = 0)
  wv <- vector(mode = "numeric", length = 0)
  pv <- vector(mode = "numeric", length = 0)
  hmin <- min(hwdata[,1])-15
  hmax <- max(hwdata[,1])+15
  wmin <- min(hwdata[,2])-15
  wmax <- max(hwdata[,2])+15
  mv <- colMeans(hwdata)
  cv <- cov(hwdata)
  cat("Mean Vector",mv)
  cat("Covariance matrix",cv)
  for(h in hmin:hmax)
  {
    for (w in wmin:wmax) {
      d = c(h,w)-mv
      r = ((t(d)%*%solve(cv))%*%(d))
      p = 1/(2*pi*sqrt(det(cv)))*exp(-0.5*r)
      hv <- c(hv,h)
      wv <- c(wv,w)
      pv <- c(pv,p)
    }
  }
    library(rgl)
    plot3d(x=hv,y=wv,z=pv,xlab = "Height",ylab = "Weight",zlad = "P(h,w)",col = "red")
    return(mvdata = data.frame(mv=mv,cv=cv))
}
mvtest <- function(mvdata,hwdata)
{
  mv = mvdata$mv
  cv = cbind(mvdata$cv.1,mvdata$cv.2)
  d = hwdata - mv
  r = ((t(d)%*%solve(cv))%*%d)
  pt <- 1/(2*pi*sqrt(det(cv)))*exp(-0.5*r)
  if(pt>=0.00005)
  {
    print("Person is adult based on H & W")
  }else{
    print("Person is not adult based on H & W")
  }
}
hwdata <- cbind(c(165,170,153,178,167,175,180,159,166,173),
                c(70,68,59,55,60,63,78,77,84,59))
mvdata <- mvtrain(hwdata)
ht <- as.numeric(readline(prompt = "Enter the height of a person : "))
wt <- as.numeric(readline(prompt = "Enter the Weight of a person : "))
hwdata <- c(ht,wt)
mvtest(mvdata,hwdata)
