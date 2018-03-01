
#Read dataset
hpc <- subset(read.table("./household_power_consumption.txt", header = TRUE, sep = ";",
                         na.strings = "?", stringsAsFactors = FALSE), 
              Date == "1/2/2007" | Date == "2/2/2007")

#Open graphic device "PNG" with resolution of 430 by 480
png(filename = "plot1.png", width= 480, height = 480)

#Code for the 1st plot
hist(hpc$Global_active_power, breaks = 12, freq = T, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()