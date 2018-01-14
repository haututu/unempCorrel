library(dplyr)
library(readxl)
library(ggplot2)

#Load data
cpi <- read_excel("graphdata.xlsx", 2)
unemp <- read.csv("unemp.csv")

colnames(cpi) <- c("date", "cpi")
colnames(unemp) <- c("date", "unemp")

cpi$date <- as.Date(as.integer(cpi$date), origin=as.Date("1900-01-01"))

cpi <- filter(cpi[,1:2], !is.na(date) & !is.na(cpi))
unemp <- filter(unemp, unemp != "" & date != "" & date != " ")

cpi$date

cpi <- filter(cpi, date > "1986-01-01")

unemp$unemp <- as.numeric(as.character(unemp$unemp))
cpi$cpi <- as.numeric(as.character(cpi$cpi))

ggplot(cpi, aes(x=date, y=cpi)) + geom_line() + geom_smooth()

ggplot(unemp, aes(x=date, y=unemp)) + geom_line() + geom_smooth()

Q1 <- "-01-02"
Q2 <- "-04-02"
Q3 <- "-07-02"
Q4 <- "-10-02"

unemp$date <- gsub("Q1", Q1, unemp$date)
unemp$date <- gsub("Q2", Q2, unemp$date)
unemp$date <- gsub("Q3", Q3, unemp$date)
unemp$date <- gsub("Q4", Q4, unemp$date)

unemp$date <- as.Date(unemp$date)

merged <- inner_join(cpi, unemp, "date")

ggplot(merged, aes(x=date, y=unemp)) + geom_line(aes(color="blue")) + geom_smooth() + geom_line(aes(y=cpi, color="red")) + geom_smooth(aes(y=cpi, color="red"))

mergedframe <- as.data.frame(cbind(merged2, unemp$date))
colnames(mergedframe) <- c("unemp", "cpi", "date")

ggplot(mergedframe, aes(x=date, y=unemp)) + geom_line(aes(color="blue")) + geom_smooth() + geom_line(aes(y=cpi, color="red")) + geom_smooth(aes(y=cpi, color="red"))

as.data.frame(merged2)

merged <- ts(merged, frequency = 4)

blahComponent <- decompose(merged[,3])
blahAdjusted <- merged[,3] - blahComponent$seasonal


blahLm <- tslm(unemp ~ cpi, merged2[150:250,])

plot(blahAdjusted)

merged2 <- cbind(blahAdjusted, merged[,2])
colnames(merged2) <- c("unemp", "cpi")
