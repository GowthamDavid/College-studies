sdata <- data.frame(sname = c('Gowtham','Jeevitha','Kaviya'),
                    sroll = c(101,103,111),
                    sage = c(21,18,22),
                    ssex = c('Male','Female','Female'),
                    sbranch = c('DS','AI&DS','CSE'),
                    m1 = c(98,99,87),
                    m2 = c(90,100,99),
                    m3 = c(100,96,97),
                    m4 = c(89,87,92),
                    m5 = c(99,98,91))
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
