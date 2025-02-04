#' @title Fix tidyverse conflicts
#' @description Find functions with name conflicts in the global environment and reassign all, prioritizing tidyverse functions.
#'
#' @importFrom tidyverse tidyverse_conflicts
#' @importFrom conflicted conflicts_prefer
#' @export
fix_tidyverse_conflicts <- function() {

  if (!requireNamespace("conflicted", quietly = TRUE)) {
    stop("Package 'conflicted' is required but not installed.")
  }

  tidyverse::tidyverse_conflicts() |>
    purrr::map_chr(dplyr::last) |>
    tibble::enframe() |>
    with(stringr::str_c(stringr::str_remove(value, '^package:'), '::', name)) |>
    purrr::map(rlang::parse_expr) |>
    (\(x) do.call(conflicted::conflicts_prefer, x))()
}
