##assignment3
library(ggplot2)
library(data.table)
setwd("C:/COMMUNISM/coursera/Data Science/4/work/2")
NEI <- readRDS("./exdata-data-NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("./exdata-data-NEI_data/Source_Classification_Code.rds")
NEIdt <- data.table(NEI)
NEIYearsTypes <- NEIdt[NEIdt$fips==24510, sum(Emissions), by="type,year"]
g <- ggplot(data=NEIYearsTypes)
g + geom_line(aes(x=year, y=V1, color = type), size=1) + labs(x="Year") + labs(y="Emissions") + labs (title="Baltimore city emissions by sources") + labs (color = "Type")

