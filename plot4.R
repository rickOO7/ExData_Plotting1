dataFile <- "C:/Users/rick7/Documents/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

#str(subSetData)
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subdata$Global_active_power)
globalReactivePower <- as.numeric(subdata$Global_reactive_power)
voltage <- as.numeric(subdata$Voltage)
subMeter1 <- as.numeric(subdata$Sub_metering_1)
subMeter2 <- as.numeric(subdata$Sub_metering_2)
subMeter3 <- as.numeric(subdata$Sub_metering_3)



par(mfrow = c(2, 2)) 

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, subMetering1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

