# scottstock
Yahoo stock data and analysis in R

# Purpose
Get Yahoo stock data into a dataframe in R more quickly and easily for students

# Usage
scottstock(ticker, frequency, start_date, end_date)

# Arguments
#### ticker	
The stock symbol you want: "MSFT", or you can specify multiple by c("MSFT", "FB")

#### frequency	
The type of data you want to pull: "daily", "weekly", "monthly", "yearly"

#### start_date	
The earliest date from which you want to pull data: "MM-DD-YYYY" surrounded by quotes

#### end_date	
The latest date from which you want to pull data: "MM-DD-YYYY" surrounded by quotes

# References
This script is a wrapper for Marcelo Perlin's BatchGetSymbols package that also automates analysis and regression commands.

# Examples
myStock <- scottstock("MSFT","monthly",
    "01-01-2019", "12-31-2019")
