#' Print all data frame rows to console

#' @return A data frame.
#' @param x data frame to print
#' @param n number of rows to print
#' @export
#' @examples
#' require(ggplot2)
#' mpg |> print_all()
#' mpg |> print_all(n=50)

print_all <- function(x, n = nrow(x)){print(x, n = n )}

