data<-read.table("household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors = FALSE,dec =".")
udata<-data[data$Date %in% c("1/2/2007","2/2/2007")]
dateandtime<-strptime(paste(udata$Date,udata$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
udata$Global_active_power<-as.numeric(udata$Global_active_power)
png("plot2.png",width = 480,height = 480)
plot(dateandtime,udata$Global_active_power,xlab = " ",ylab = "Global Active Power (kilowatts)",type = "l")
 dev.off()