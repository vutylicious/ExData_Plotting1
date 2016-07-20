## Create png file
png<-png(filename="plot2.png",width=480,height=480)

## Create date/time field for the X axis
twoday$DateTime<-as.POSIXct(paste(twoday$Date,twoday$Time),
                            format="%d/%m/%Y %H:%M:%S")

## Create line plot
plot(twoday$DateTime,twoday$Global_active_power,type="l",xlab="",
     ylab="Global Active Power(kilowatts)")

## Close png file
dev.off()