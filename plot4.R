## Create png file
png<-png(filename="plot4.png",width=480,height=480)

## Create 2x2 grid
par(mfrow=c(2,2))

## Create line plot for top left
plot(twoday$DateTime,twoday$Global_active_power,type="l",xlab="",
     ylab="Global Active Power")

## Create line plot for top right
plot(twoday$DateTime,twoday$Voltage,type="l",xlab="datetime",
     ylab="Voltage")

## Create line plot for bottom left
plot(twoday$DateTime,twoday$Sub_metering_1,type="l",xlab="",
     ylab="Energy sub metering",col="black")
lines(twoday$DateTime,twoday$Sub_metering_2,col="red")
lines(twoday$DateTime,twoday$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,
       bty="n")

## Create line plot for bottom right
plot(twoday$DateTime,twoday$Global_reactive_power,type="l",xlab="datetime",
     ylab="Global_reactive_power")

## Close png file
dev.off()