#' @title Yahoo stock data automation for Finance class
#'
#'Pulls stock data from Yahoo Finance and then do analysis required for Finance II class
#'
#' @param ticker The stock ticker you want.  Can also be multiple, e.g. c("MSFT","FB")
#' @param frequency The type of data you want to pull: ’daily’, ’weekly’, ’monthly’, ’yearly’
#' @param start_date The earliest date from which you want to pull data: "MM-DD-YYYY" surrounded by quotes
#' @param end_date The latest date from which you want to pull data: "MM-DD-YYYY" surrounded by quotes
#' @section Details:
#' Let the inputs be: myStock=scottstock("MSFT", "monthly", "01-01-2019", "12-31-2019")
#'
#' @export



library(BatchGetSymbols)
library(lubridate)


scottstock <- function(ticker, frequency, start_date, end_date) {
  first.date = date(fast_strptime(start_date, '%m-%d-%Y'))
  last.date = date(fast_strptime(end_date, '%m-%d-%Y'))
  BatchGetSymbols(tickers = ticker,
                  first.date = first.date,
                  last.date = last.date,
                  freq.data = frequency,
                  type.return = 'arit',
                  cache.folder = file.path(tempdir(),
                                           'BGS_Cache') ) # cache in tempdir()
}
