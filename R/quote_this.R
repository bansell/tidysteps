#' Quote this. Converts a long quoted string to separate elements in a vector.
#'
#' Runs scan() under the hood
#' TBC: ideally split on any delim/white space as determined by user.

#' @name quote_this
#' @param x A quoted string of e.g. words which will be converted to individual elements.
#' @examples
#' quote_this('apple pear banana')

#' @export
quote_this <- function(x){scan(text=x, what=" ")}
