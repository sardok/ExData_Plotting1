getData <- function () {
    data <- read.table('household_power_consumption.txt',
                       header=TRUE,  sep=';', na.strings='?',
                       colClasses=c(rep('character', 2), rep('numeric', 7)))
    data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
    data
}

getFebData <- function () {
    data <- getData()
    febdata <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
    febdata
}

drawPlot1 <- function (data) {
    hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
}

drawPlot2 <- function (data) {
    plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
}

drawPlot3 <- function (data) {
    plot(data$DateTime, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
    lines(data$DateTime, data$Sub_metering_2, col="red")
    lines(data$DateTime, data$Sub_metering_3, col="blue")
    legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="l", col=c("black","red","blue"), lty=1, lwd=2)
}
