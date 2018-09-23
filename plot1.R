dataFile <- "C:/Users/rick7/Documents/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")
hist(as.numeric(as.character(subdata$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
title(main="Global Active Power")