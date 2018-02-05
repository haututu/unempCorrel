###This is the code used for the blog post
###There is a project accompanying this post where we seasonally adjust ourselves, 
###i.e. slightly different numbers here

library(knitr)
library(kableExtra)
library(forecast)
library(seasonal)
library(readxl)
library(dplyr)
library(ggplot2)

#Load data, read_exel takes a spreadsheet and sheet number for the table
cpi <- read_excel("graphdata.xlsx", 2)
#Stats NZ seasonally adjusted, we didnt adjust ourselves as in project file
unemp <- read.csv("unempSeasAdj.csv")

#Make column names the same
colnames(cpi) <- c("date", "cpi")
colnames(unemp) <- c("date", "unemp")

#Some quarters did not have data so removing them here
cpi <- filter(cpi[,1:2], !is.na(date) & !is.na(cpi))
unemp <- filter(unemp, unemp != "" & date != "" & date != " ")

#Need to cast variables to dates but change Q~ labels to actual dates first
unemp$date <- gsub("Q1", "-01-02", unemp$date)
unemp$date <- gsub("Q2", "-04-02", unemp$date)
unemp$date <- gsub("Q3", "-07-02", unemp$date)
unemp$date <- gsub("Q4", "-10-02", unemp$date)

#Date was a string so convert to date
cpi$date <- as.Date(as.integer(cpi$date), origin=as.Date("1900-01-01"))
unemp$date <- as.Date(unemp$date, origin=as.Date("1900-01-01"))

#Casting variables, they loaded as factors so need to cast characters first
unemp$unemp <- as.numeric(as.character(unemp$unemp))
cpi$cpi <- as.numeric(as.character(cpi$cpi))

#Merge
dat <- ts(
  inner_join(
  filter(cpi, date %in% unemp$date), unemp, "date") %>% 
    select(-date),
  frequency = 4, 
  start=c(1986, 01)
)
