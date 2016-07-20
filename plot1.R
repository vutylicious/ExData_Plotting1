## Create png file
png<-png(filename="plot1.png",width=480,height=480)

## Create histogram
hist(twoday$Global_active_power,col="red",xlab="Global Active Power (kilowatts)"
     ,main="Global Active Power")

## Close png file
dev.off()
