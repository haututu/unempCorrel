## Data sources
The two data sources are for inflation (CPI) and unemployment. The CPI data came from the [Reserve Bank of New Zealand](https://www.rbnz.govt.nz/statistics/key-graphs/key-graph-inflation) and the unemployment data came from [Stats Nz](http://archive.stats.govt.nz/infoshare/SelectVariables.aspx?pxID=caecaca0-2e11-45bf-ba3c-6b08da2ec9ef) (Stats NZ links are breaking with website changes so forgive me if its dead).

Seasonaly adjusted data is available for those interested, we got the unadjusted estimates so we could demonstrate how to adjust the data. The CPI data is seasonaly adjusted.

## Packages being explored
The two packages people may not be familiar with are:

* `readxl` to pull the CPI data out of an excel spreadsheet (Live would be easier if it was csv).
* `forecast` for seasonal adjustment and regression of time series data

## References 
I started reading into this due after reading an article in [The Economist](https://www.economist.com/blogs/graphicdetail/2017/11/daily-chart). I also found a [book chapter](https://www.otexts.org/fpp/4/8) on time series regression that put me onto `tslm`.

## After files in repository

I have `css` and `js` files I was using to test code folding but didnt end up using it in my final report. I have left them here incase I needed to refer back to them though. One shows/hides chunks and the other formats the button to look pretty.