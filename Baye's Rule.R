uvtrain <- function(hm,hf)
{
  hmm <- vector(mode = "numeric", length = 0)
  pmh <- vector(mode = "numeric", length = 0)
  hmin <- min(hm)-15
  hmax <- max(hm)+15
  mm <- mean(hm)
  cat("Mean of Male Height",mm)
  vm <- var(hm)
  cat("Variance of Male Height",vm)
  for(h in hmin:hmax)
  {
    r = (h - mm)^2 / vm
    p = (1/(sqrt(2*pi*vm)))*exp(-0.5*r)
    hmm <- c(hmm,h)
    pmh <- c(pmh,p)
  }
  hff <- vector(mode = "numeric", length = 0)
  pfh <- vector(mode = "numeric", length = 0)
  hmin <- min(hf)-15
  hmax <- max(hf)+15
  fm <- mean(hf)
  cat("Mean of Female Height",fm)
  vf <- var(hf)
  cat("Variance of Female Height",vf)
  for(h in hmin:hmax)
  {
    r = (h - fm)^2 / vf
    p = (1/(sqrt(2*pi*vf)))*exp(-0.5*r)
    hff <- c(hff,h)
    pfh <- c(pfh,p)
  }
  plot(hmm,pmh,type = "l",col = "red",pch = 9,xlim = c(min(hff),max(hmm)),xlab = "Height of a Person( Male and Female )",ylab = "(Male|hm) and (Female|hf)",main = "Normal Density")
  lines(hff,pfh,col = "blue")
  return(list(mm,vm,fm,vf))
}
uvtest <- function(mm,vm,fm,vf,ht)
{
  rm <- (ht - mm)^2 / vm
  pm <- (1/(sqrt(2*pi*vm)))*exp(-0.5*rm)
  
  rf <- (ht - fm)^2 / vf
  pf <- (1/(sqrt(2*pi*vf)))*exp(-0.5*rf)
  
  if(pm > pf)
  {
    print("The given height of Person is Male")
  }else{
    print("The given height of a Person is Female")
  }
}

cat("\014")
hm <- c(154,158,167,159,178,183,177,164,189,160)
hf <- c(140,151,146,163,165,139,158,152,138,143)
mv <- uvtrain(hm,hf)
ht <- as.numeric(readline(prompt = "Enter the Height of a Person : "))
mm <- as.numeric(mv[1])
vm <- as.numeric(mv[2])
fm <- as.numeric(mv[3])
vf <- as.numeric(mv[4])
uvtest(mm,vm,fm,vf,ht)
