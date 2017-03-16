setwd("D:/Users/mwiegand/Documents/Training/Coursera/4_Exploratory Data Analysis/Projects/Project 1")

data <- read.table("D:/Users/mwiegand/Documents/Training/Coursera/4_Exploratory Data Analysis/Projects/Project 1/household_power_consumption.txt", 
                   sep=";", header=TRUE, na.strings="?")

subset <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, subset$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

