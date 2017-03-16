setwd("D:/Users/mwiegand/Documents/Training/Coursera/4_Exploratory Data Analysis/Projects/Project 1")

data <- read.table("D:/Users/mwiegand/Documents/Training/Coursera/4_Exploratory Data Analysis/Projects/Project 1/household_power_consumption.txt", 
                   sep=";", header=TRUE, na.strings="?")

subset <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(datetime, subset$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(datetime, subset$Voltage, type="l", xlab="", ylab="Voltage")
plot(datetime, subset$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="datetime")
lines(datetime, subset$Sub_metering_2, type="l", col="red")
lines(datetime, subset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", lwd=2.5, col=c("black", "red", "blue")) 
plot(datetime, subset$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()