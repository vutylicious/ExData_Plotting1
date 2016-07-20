## Read data file
setwd("c:/coursera/ExData_Plotting1")
twoday<-read.table("feb12.csv",header=TRUE,sep=",",
                   colClasses=c("character","character","numeric","numeric",
                                "numeric","numeric","numeric","numeric",
                                "numeric"))

## Create png file
png<-png(filename="plot1.png",width=480,height=480)

## Create histogram
hist(twoday$Global_active_power,col="red",xlab="Global Active Power (kilowatts)"
     ,main="Global Active Power")

## Close png file
dev.off()
