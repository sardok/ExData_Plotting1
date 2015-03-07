source("helper.R")

febdata <- getFebData()
png(filename="plot3.png")
drawPlot3(febdata)
dev.off()
