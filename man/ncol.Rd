% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ncol.R
\name{ncol}
\alias{ncol}
\title{Number of columns in a data frame}
\usage{

}
\description{
Since columns are also variables, this is also the
number of variables in a data frame. See \code{\link[base:names]{base::names()}}
to find what the variables are called.
}
\details{
\code{ncol(data)}
}
\examples{
tibble(
  x = 1:5,
  y = 6:10
) \%>\%
  ncol()

#> [1] 2

-----------------------------------

library(gapminder)

gapminder \%>\% ncol()

#> [1] 6

}
\seealso{
\code{\link[=nrow]{nrow()}}, \code{\link[base:names]{base::names()}}
}
