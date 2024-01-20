
#' Count unique values for any number of columns, print proportion and sort descending.
#'
#' see \href{https://github.com/bansell/tidyExt#tidyext-package}{\strong{tidyExt vignette}}
#' @param tbl A data frame/tibble
#' @param ... Any number of columns to count
#' @export

#cf https://tidyeval.tidyverse.org/multiple.html
sort_prop <- function(tbl,  ... ){
  tbl |> dplyr::count( ... , sort=TRUE) |>  dplyr::mutate(prop = n/sum(n))}

#' @example
#' mtcars |> sort_prop(cyl,gear)
