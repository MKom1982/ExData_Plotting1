## Preparation of data set
dset<-read.table("./household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
dset1<-dset[dset$Date %in% c("1/2/2007","2/2/2007"),]

## Creating of the plot

SM1<-as.numeric(dset1$Sub_metering_1)
SM2<-as.numeric(dset1$Sub_metering_2)
SM3<-as.numeric(dset1$Sub_metering_3)
TIM<-strptime(paste(dset1$Date, dset1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(TIM,SM1,type="l",ylab="Energy Sub metering",xlab="")
lines(TIM,SM2,type="l",col="red")
lines(TIM,SM3,type="l",col="blue")
legend("topright",col=c("black","red","blue"),lty=1,legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.off()