## Create png file
png<-png(filename="plot3.png",width=480,height=480)

## Create line plot
plot(twoday$DateTime,twoday$Sub_metering_1,type="l",xlab="",
     ylab="Energy sub metering",col="black")
lines(twoday$DateTime,twoday$Sub_metering_2,col="red")
lines(twoday$DateTime,twoday$Sub_metering_3,col="blue")

## Add legend to top right
legend("topright",col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)

## Close png file
dev.off()