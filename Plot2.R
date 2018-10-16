## Preparation of data set
dset<-read.table("./household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
dset1<-dset[dset$Date %in% c("1/2/2007","2/2/2007"),]

## Creating of the plot

GAP<-as.numeric(dset1$Global_active_power)
TIM<-strptime(paste(dset1$Date, dset1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(TIM,GAP,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()