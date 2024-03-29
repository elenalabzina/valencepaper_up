setwd("~/R/valencepaper")
source("jagsLib.R")

setwd("~/R/valencepaper/data")

source("spain2008.jags")
d2=d
rm(d)
d1 = d2
d1$cPSOE=NULL
d1$cPP=NULL
d1$cIU=NULL
rm(d2)

setwd("~/R/valencepaper/models")

name1=c(str_range("muu",2,12),"mu","beta1","beta2")
#name2=c(str_range("muu",2,12),"mu","beta1","beta2","cPSOE","cPP","cIU")

doRJags("simpleVCL",d1,name1,25000,TRUE,"simpleVCL2008_25000_.log")