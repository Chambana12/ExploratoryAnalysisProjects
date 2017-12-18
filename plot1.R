getwd()
setwd("/Users/markomadunic/Desktop/Data/EXPLORATORY DATA ANALYSIS/WEEK 1/DATA SETS")

# select data for 2 weekdays
mydata <- household_power_consumption[household_power_consumption$Date=="2007-02-01" | household_power_consumption$Date=="2007-02-02", ]

save.image("~/Desktop/Data/EXPLORATORY DATA ANALYSIS/WEEK 1/DATA SETS/project1.RData")
load("~/Desktop/Data/EXPLORATORY DATA ANALYSIS/WEEK 1/DATA SETS/project1.RData")

## Plot 1 is basic histogram; it has title; colored in red; has labeled x- and y- axes
# first step, create basic histogram; attach mydata with 2 days worth of data
attach(mydata)
# convert Global_active_power into a numeric variable
Global_Active_Power <- as.numeric(as.character(Global_active_power))
# create basic histogram with title
hist(Global_active_power, main="Global Active Power") # add proper labels to axes
hist(Global_active_power, main="Global Active Power", xlab ="Global Active Power (kilowatts)")
hist(Global_active_power, main="Global Active Power", 
     xlab ="Global Active Power (kilowatts)", col = "red") # add color
hist(Global_Active_Power, main="Global Active Power", 
     xlab ="Global Active Power (kilowatts)", col = "red", ylim = c(0,1200)) # limit y-axis

## Copy plot1 to a PNG file
dev.copy(png, file = "plot1.png", width=480, height=480) 
dev.off()
