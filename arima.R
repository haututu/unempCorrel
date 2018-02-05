source("setup.R")

model1 <- auto.arima(dat[,2])
model2 <- auto.arima(dat[,2], xreg = dat[,1])

model1 <- auto.arima(head(dat[,2], 124))
model2 <- auto.arima(head(dat[,2], 124), xreg = head(dat[,1], 124))

autoplot(forecast(model1, h=4)) +
  xlim(2012, 2020) +
  ylim(2.5, 7) +
  theme_classic()

autoplot(forecast(model2, h=4, xreg=tail(cpi, 4)[,2])) +
  xlim(2012, 2020) +
  ylim(2.5, 7) +
  theme_classic()

forecast(model1, h=1)
forecast(model2, h=1, xreg=tail(cpi, 1)[,2])
