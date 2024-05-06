sdata <- read.table(choose.files(),sep = ",",header = TRUE)
head(sdata)
nrow(sdata)
ncol(sdata)
result <- vector(mode = 'character',length = 0)
for (i in 1:nrow(sdata)) {
  if(sdata$m1[i]>50 && sdata$m2[i] >50 && sdata$m3[i]>50 && sdata$m4[i]>50 && sdata$m5[i]>50){
    status <- "Pass"
  }else{
    status <- "Fail"
  }
  result = append(result,status)
}
total = sdata$m1 + sdata$m2 +sdata$m3 + sdata$m4 + sdata$m5
ptg = total/5
tdata <- cbind(sdata,total,ptg)
tdata
