#boxplot.r
#creating boxplots of data
#Samples as columns and rows as metabolites or bins in NMR with their names in first column and first row.
#Draw the box plots for all the samples but any specific number of sample or metabolites can be used to draw the box plot by choosing them e.g. Data[,1] or Data[1:2,1:10]etc 
#Figure resolution, width height can be changed.

Data <- read.table("Data.csv",sep=",",header=T, row.names=1)

jpeg('box_plot.jpg', quality = 100, bg = "white", res = 250, width = 7, height = 7, units = "in")

boxplot(as.data.frame((Data),xlab="Samples", ylab="Normalized Peak Area"))

dev.off()
