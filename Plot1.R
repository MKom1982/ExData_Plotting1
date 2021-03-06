## Preparation of data set
dset<-read.table("./household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
dset1<-dset[dset$Date %in% c("1/2/2007","2/2/2007"),]

## Creating of the plot

GAP<-as.numeric(dset1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAP,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()