## Plot3
# code for DTreal same as for Plot2

# convert Sub metering 1,2, and 3 into numeric values
rm(Sub_met_1)
Sub_met_1 <- as.numeric(as.character(Sub_metering_1))
Sub_met_2 <- as.numeric(as.character(Sub_metering_2))
Sub_met_3 <- as.numeric(as.character(Sub_metering_3))

# add 3 plot lines 
plot(DTreal, Sub_met_1, type = "l", ylab="Energy sub metering", xlab ="") 
points(DTreal, Sub_met_2, type="l", col="red")
points(DTreal, Sub_met_3, type="l", col="blue")

points(legend("topright", lty=1, col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")))

## Copy plot3 to a PNG file
dev.copy(png, file = "plot3.png", width=480, height=480) 
dev.off()
       