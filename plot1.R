source("helper.R")

febdata <- getFebData()
png(filename="plot1.png")
drawPlot1(febdata)
dev.off()
