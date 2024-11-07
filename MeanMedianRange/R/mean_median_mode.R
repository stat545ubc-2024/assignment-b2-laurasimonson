# Assignment B2

# By Laura Simonson

# Exercise 1
# I will be using the function I created in Assignment B2, called mean_median_range, which functions to calculate the mean, median and range of any numerical dataset.


#' Mean, Median and Range Function
#' @description This function will calculate the mean, median and range values for numeric vectors.
#' @param x numeric vector of interest.
#' @param na.rm logical value to indicate whether NA values should be removed before computation. Default is false.
#' @details This function will return an error message for any non-numeric values that are inputted.
#' @return This function will return a vector with 4 items. The following elements will be returned:
#' \item{a}{The mean of the numbers in data set.}
#' \item{b}{The median of the numbers in data set.}
#' \item{c}{The range of the numbers in data set, represented as the last two numbers in the return, the minimum and maximum values.}
#' @examples
#' mean_median_range(c(1, 2, 3, 4, 5, NA, 6), na.rm = TRUE)
#' mean_median_range(c(10, 20, 30, 40, 50))
#' @importFrom stats median
#' @export
 mean_median_range <- function(x, na.rm = FALSE){
if(!is.numeric(x)){
  stop("Input is not numeric, this function requires numeric values.")
}
a = mean(x, na.rm = na.rm)
b = median(x, na.rm = na.rm)
c = range(x, na.rm = na.rm)
c(a,b,c(c))
}
