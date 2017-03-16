setwd("D:/Users/mwiegand/Documents/Training/Coursera/4_Exploratory Data Analysis/Projects/Project 1")

data <- read.table("D:/Users/mwiegand/Documents/Training/Coursera/4_Exploratory Data Analysis/Projects/Project 1/household_power_consumption.txt", 
                   sep=";", header=TRUE, na.strings="?")

subset <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(datetime, subset$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, subset$Sub_metering_2, type="l", col="red")
lines(datetime, subset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()