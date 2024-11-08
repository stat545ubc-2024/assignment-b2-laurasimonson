% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mean_median_mode.R
\name{mean_median_range}
\alias{mean_median_range}
\title{Mean, Median and Range Function}
\usage{
mean_median_range(x, na.rm = FALSE)
}
\arguments{
\item{x}{numeric vector of interest.}

\item{na.rm}{logical value to indicate whether NA values should be removed before computation. Default is false.}
}
\value{
This function will return a vector with 4 items. The following elements will be returned:
\item{a}{The mean of the numbers in data set.}
\item{b}{The median of the numbers in data set.}
\item{c}{The range of the numbers in data set, represented as the last two numbers in the return, the minimum and maximum values.}
}
\description{
This function will calculate the mean, median and range values for numeric vectors.
}
\details{
This function will return an error message for any non-numeric values that are inputted.
}
\examples{
mean_median_range(c(1, 2, 3, 4, 5, NA, 6), na.rm = TRUE)
mean_median_range(c(10, 20, 30, 40, 50))
}
