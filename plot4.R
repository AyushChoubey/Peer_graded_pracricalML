data<-read.table("household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors = FALSE,dec =".")
udata<-data[data$Date %in% c("1/2/2007","2/2/2007")]

udata$Voltage<-as.numeric(udata$Voltage)
udata$Global_reactive_power<-as.numeric(udata$Global_reactive_power)

dateandtime<-strptime(paste(udata$Date,udata$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
##making coulmn numeric from charecter
udata$Sub_metering_1<-as.numeric(udata$Sub_metering_1)
udata$Sub_metering_2<-as.numeric(udata$Sub_metering_2)
udata$Sub_metering_3<-as.numeric(udata$Sub_metering_3)
##ploting
png("plot4.png",width = 480,height = 480)
par(mfrow=c(2,2))
plot(dateandtime,udata$Global_active_power,xlab = " ",ylab = "Global Active Power (kilowatts)",type = "l",cex=0.2)
plot(dateandtime,udata$Voltage,xlab = "datetime",ylab = "Voltage",type = "l")
plot(dateandtime,udata$Sub_metering_1,xlab = " ",ylab = "Energy sub mettering",type = "l")
lines(dateandtime,udata$Sub_metering_2,type = "l",col="red")
lines(dateandtime,udata$Sub_metering_3,type = "l",col="blue")
legend("topright",pch ="-",col = c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(dateandtime,udata$Global_reactive_power,xlab = "datetime",ylab = "Global_reactive_power",type = "l")
dev.off()