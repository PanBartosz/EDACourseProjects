data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
d1 <- subset(data, Date == "1/2/2007"| Date == "2/2/2007")
d1$Date <- paste(d1$Date, d1$Time)
d1$Date <- strptime(d1$Date, format = "%d/%m/%Y %H:%M:%S")
plot(d1$Date, as.numeric(as.vector(d1$Global_active_power)), type="l", ylab = "Global Active Power (kilowatts)", xlab="")
dev.copy(png, file = "plot2.png")
dev.off()