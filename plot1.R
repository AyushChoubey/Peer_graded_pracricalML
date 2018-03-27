data<-read.table("household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors = FALSE,dec =".")
udata<-data[data$Date %in% c("1/2/2007","2/2/2007")]
rm(data.frame=data)
udata$Global_active_power<-as.numeric(udata$Global_active_power)
png("plot1.png",height = 480,width = 480)
hist(udata$Global_active_power,col="red",xlab = "Global Active Power(Kilowatts)",ylab = "Frequency",main ="Global Active Power" )
dev.off()