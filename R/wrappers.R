#' Data type conversion wrappers
#'
#' Simple wrapper for as.character() for consistency with tidy syntax.
#' Note: these are technically all_after_last() and all_before_first() occurrences.
#' see \href{https://vctrs.r-lib.org/reference/vec_cast.html}{\strong{vctrs::vec_cast()}} for a complete treatment of type conversion/coersion.
#'
#' @return A vector of the specified data type.
#' @param x  A vector.
#'
#' @title as_character
#' @describeIn as_character Convert vector to character data type
#' @export
as_character <- function(x) {
  as.character(x)
}

#' @examples
#' vec_numeric <- c(3.142,2.5,3.4)
#' vec_character <- c('mitsubishi','subaru','honda')
#' vec_integer <- c(1,0,1)
#' vec_logical <- c(TRUE,FALSE,TRUE)
#'
#' as_character(vec_numeric)
#' as_integer(vec_numeric)
#' as_factor(vec_character)
#' as_logical(vec_integer)
#' as_numeric(vec_logical)

#' @title as_numeric
#' @describeIn as_character Convert vector to numeric data type
#'
#' @export
as_numeric <- function(x) {
  as.numeric(x)
}
#'
#' @title as_integer
#' @describeIn as_character Convert vector to integer data type
#'
#' @export
as_integer <- function(x) {
  as.integer(x)
}

#' @title as_factor
#' @describeIn as_character Convert vector to factor data type
#'
#' @export
as_factor <- function(x) {
  as.factor(x)
}

#' @title as_logical
#' @describeIn as_character Convert vector to logical data type
#'
#' @export
as_logical <- function(x) {
  as.logical(x)
}

#' @title as_complex
#' @describeIn as_character Convert vector to complex data type
#'
#' @export
as_complex <- function(x) {
  as.complex(x)
}






