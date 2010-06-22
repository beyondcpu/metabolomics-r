#lda.r
#perform LDA
#Samples as rows and colums as metabolites or bins in NMR with their names in first column and first row, first colums is thus the names of samples, in second put the classification/group e.g. A, B etc.
#missing values (if any) are replaced by the half of the lowest value in the entire data matrix
#LDA  plot will be saved in Figure folder

library(MASS)

Data <- read.table("Data.csv",sep=",",header=T, row.names=1)

D_lda<-Data[,-1]

Group<-Data[,1]

D_lda[is.na(D_lda)]<-0.5*(min(D_lda,na.rm=T))

LDA<-lda(D_lda,Group)

jpeg('LDA_R.jpg', quality = 250, bg = "white", res = 250, width = 7, height = 7, units = "in")

plot(LDA,dimen=2,cex=2)

dev.off()

