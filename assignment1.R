##assignment1
setwd("C:/COMMUNISM/coursera/Data Science/4/work/2")
NEI <- readRDS("./exdata-data-NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("./exdata-data-NEI_data/Source_Classification_Code.rds")
library(data.table)
NEIdt <- data.table(NEI)
NEIYearTotals <- NEIdt[,sum(Emissions), by=year]
par(mar = c(4,4,2,2))
plot(NEIYearTotals, type = "o", 
                    xlab = "Year", ylab="Emissions", 
                    main="Total PM2.5 emission from all sources",
                    col="blue")