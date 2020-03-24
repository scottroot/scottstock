#' scottstock
#'
#' Yahoo Finance data analysis in R
#'
#' @param ticker The stock symbol you want: "MSFT", or you can specify multiple by c("MSFT", "FB")
#' @param frequency YourThe type of data you want to pull: "daily", "weekly", "monthly", "yearly"
#' @param start_date The earliest date from which you want to pull data: "MM-DD-YYYY" surrounded by quotes
#' @param end_date The latest date from which you want to pull data: "MM-DD-YYYY" surrounded by quotes
#' @return Output is a dataframe with the stock data specified.
#' \code{scottstock()} returns the Yahoo Finance data for a given ticker and start/end dates.
#' @examples
#' myStock <- scottstock("MSFT","monthly", "01-01-2019", "12-31-2019")
# NOTE -- S&P 500 is ^GSPC
scottstock <- function(ticker, frequency, start_date, end_date) {
  library(BatchGetSymbols)
  library(lubridate)
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
