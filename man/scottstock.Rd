\name{scottstock}
\alias{scottstock}
\title{Yahoo stock data wrapper of BatchGetSymbols for Finance class}
\description{Pulls stock data from Yahoo Finance and then do analysis required for Finance II class}
\usage{scottstock(ticker, frequency, start_date, end_date)}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ticker}{The stock symbol you want: "MSFT", or you can specify multiple by c("MSFT", "FB")}
  \item{frequency}{The type of data you want to pull: "daily", "weekly", "monthly", "yearly"}
  \item{start_date}{The earliest date from which you want to pull data: "MM-DD-YYYY" surrounded by quotes}
  \item{end_date}{The latest date from which you want to pull data: "MM-DD-YYYY" surrounded by quotes}
}

\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{This script is a wrapper for Marcelo Perlin's BatchGetSymbols package that also automates analysis and regression commands.}
\author{}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
## Example of function usage:
myStock <- scottstock("MSFT","monthly",
    "01-01-2019", "12-31-2019")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ stock }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
