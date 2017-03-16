setwd("D:/Users/mwiegand/Documents/Training/Coursera/4_Exploratory Data Analysis/Projects/Project 1")

data <- read.table("D:/Users/mwiegand/Documents/Training/Coursera/4_Exploratory Data Analysis/Projects/Project 1/household_power_consumption.txt", 
                   sep=";", header=TRUE, na.strings="?")

subset <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]

png("plot1.png", width=480, height=480)
hist(subset$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()