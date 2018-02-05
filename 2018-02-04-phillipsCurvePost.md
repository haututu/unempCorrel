---
layout: post
title: "Unemployment and the Phillips curve"
date: "2018-01-21"
excerpt: "Forecasting unemployment using inflation as a covariate"
tags: [R, timeseries, rent]
---
<body style="background-color:powderblue;">

Can we forecast unemployment for the December quarter using inflation which is released a month earlier ?
The full details of this post will be released soon on my projects page and will include more thorough testing. Here we will do some basic [ARIMA]() modelling to forecast the unemployment release in two days time.

### Background

I was interested in messing with time series data. Initially I was looking at the inverse relationship between unemployment and inflation (CPI). The general thought is that lower unemployment means higher wages i.e. buying power and thus an increase in inflation. However, I figured if the two are correlated then perhaps we could use the CPI as a predictor of unemployment. The timing was quite coincidental in that the next labour market release is three days from now. Lets see what estimates we can get and how close we end up to Wednesday's release.

### The details

We can see in the graph below that there is a reasonably strong relationship between unemployment and inflation. My main concern though, is that the trend is very long term. This means inflation may be pretty pathetic and predicting short-term trends for unemployment.

### Conclusion

Rent in December has increased by the same amount in the last two years, providing little evidence of an increase due to a change in living costs or student allowance. Some landlords and property managers may have increased rent, but it doesn't seem to have an observable effect so far. Hopefully we will get a clearer idea in January when I also hope to do more robust significance testing.