uvtrain <- function(hdata)
{
  hv <- vector(mode = "numeric", length = 0)
  pv <- vector(mode = "numeric", length = 0)
  hmin <- min(hdata)-15
  hmax <- max(hdata)+15
  m <- mean(hdata)
  v <- var(hdata)
  cat("Mean of hdata",m)
  cat("Variance of hdata",v)
  for (h in hmin:hmax) {
    r <- (h-m)^2/v
    p <- (1/(sqrt(2*pi*v)))*exp(-0.5*r)
    hv <- c(hv,h)
    pv <- c(pv,p)
  }
  plot(hv, pv, xlab = "Height of a Person", ylab = "P(x)", main = "Univariate Normal Density",col = "red")
  return(list(m,v))
}
uvtest <- function(m,v,ht)
{
  r <- (ht-m)^2 / v
  pt <- (1/(sqrt(2*pi*v)))*exp(-0.5*r)
  if (pt >= 0.00005)
  {
    print("The given height of a person is adult")
  }else{
    print("The given height of a person is not adult")
  }
}

hdata <- c(165,170,153,178,167,175,180,159,166,173)
mv <- uvtrain(hdata)
ht <- as.numeric(readline(prompt = "Enter the height of a person : "))
m <- as.numeric(mv[1])
v <- as.numeric(mv[2])
uvtest(m,v,ht)
