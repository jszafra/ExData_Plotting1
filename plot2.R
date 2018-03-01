
#Read dataset
hpc <- subset(read.table("./household_power_consumption.txt", header = TRUE, sep = ";",
                         na.strings = "?", stringsAsFactors = FALSE), 
              Date == "1/2/2007" | Date == "2/2/2007")

#Open graphic device "PNG" with resolution of 430 by 480
png(filename = "plot2.png", width= 480, height = 480)

#Code for the 2nd plot
hpc$Date_Time <- strptime(paste(hpc$Date, hpc$Time), format = "%d/%m/%Y %T")
plot(hpc$Date_Time, hpc$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()