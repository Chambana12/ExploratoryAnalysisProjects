attach(mydata)
## Plot2
#paste date & time
DateTime <- paste(Date, Time)
#parse date & time thru lubridate
library(lubridate)
rm(DTreal)
DTreal <- ymd_hms(DateTime)

#cbind to dfA
mydata <-cbind(mydata, DTreal)

# plot2
library("datasets")
with(mydata, {
  plot(DTreal, Global_Active_Power, type = "l", ylab="Global Active Power (kilowatts)")
})

## Copy plot2 to a PNG file
dev.copy(png, file = "plot2.png", width=480, height=480) 
dev.off()