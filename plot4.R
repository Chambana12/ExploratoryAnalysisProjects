## Plot4 - code for DTreal and Sub_met_1, Sub_met_2, Sub_met_3 same as for Plot3

# first, convert Global_reactive_power and Voltage into numeric values
Global_Reactive_Power <- as.numeric(as.character(Global_reactive_power))
Volt <- as.numeric(as.character(Voltage))

# add 4 plots on the same screen - clockwise 
par(mfrow=c(2,2), mar=c(5,4,2,1))

plot(DTreal, Global_Active_Power, type = "l", ylab="Global Active Power", xlab ="") #plot1

plot(DTreal, Volt, type = "l", ylab="Voltage", xlab ="datetime")  #plot2

plot(DTreal, Sub_met_1, type = "l", ylab="Energy sub metering", xlab ="") 
points(DTreal, Sub_met_2, type="l", col="red")
points(DTreal, Sub_met_3, type="l", col="blue")
points(legend("topright", lty=1, col=c("black", "red", "blue"), 
              legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")))  #plot3

plot(DTreal, Global_Reactive_Power, type = "l", ylab="Global_reactive_power", xlab ="datetime")  #plot4

## Copy plot4 to a PNG file
dev.copy(png, file = "plot4.png", width=480, height=480) 
dev.off()