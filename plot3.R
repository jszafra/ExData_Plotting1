
#Read dataset
hpc <- subset(read.table("./household_power_consumption.txt", header = TRUE, sep = ";",
                         na.strings = "?", stringsAsFactors = FALSE), 
              Date == "1/2/2007" | Date == "2/2/2007")

#Open graphic device "PNG" with resolution of 430 by 480
png(filename = "plot3.png", width= 480, height = 480)

#Code for the 3rd plot
hpc$Date_Time <- strptime(paste(hpc$Date, hpc$Time), format = "%d/%m/%Y %T")
plot(hpc$Date_Time, hpc$Sub_metering_1, type = "l",
     ylab = "Energy sub metering", xlab = "")
lines(hpc$Date_Time, hpc$Sub_metering_2, type = "l", col = "red")
lines(hpc$Date_Time, hpc$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = c(1,1,1))

dev.off()