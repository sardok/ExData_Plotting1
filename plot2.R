source("helper.R")

febdata <- getFebData()
png(filename="plot2.png")
drawPlot2(febdata)
dev.off()
