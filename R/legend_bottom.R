#' Legend bottom
#'
#' Adjusts the ggplot2 legend position to the bottom of the plotting space.
#' Optionally, you can specify the number of columns in the legend and whether to invert the row order of legend items.
#' For more details, see \href{https://github.com/bansell/tidyExt#tidyext-package}{tidyExt vignette}.
#'
#' @name legend_bottom
#' @aliases bottom_legend
#' @param ncol Integer; number of columns in the legend (default: NULL, no specific column arrangement).
#' @param invert_rows Logical; if TRUE, reverses the row order of legend items (default: FALSE).
#' @return A list of ggplot2 theme and guide specifications.
#' @importFrom ggplot2 theme guide_legend guides
#' @export
#' @examples
#' if(require("ggplot2")) {
#'   ggplot(mpg, aes(x = cty, y = hwy)) +
#'     geom_point(aes(col = manufacturer)) +
#'     legend_bottom()
#'
#'   ggplot(mpg, aes(x = cty, y = hwy)) +
#'     geom_point(aes(col = manufacturer)) +
#'     legend_bottom(ncol = 2, invert_rows = TRUE)
#' }
legend_bottom <- function(ncol = NULL, invert_rows = FALSE) {
  if (!is.null(ncol)) {
    list(
      ggplot2::theme(legend.position = "bottom"),
      # Account for e.g. geom_col(aes(fill...))
      ggplot2::guides(fill = ggplot2::guide_legend(ncol = ncol, reverse = invert_rows)),
      # Account for e.g. geom_point(aes(colour...))
      ggplot2::guides(colour = ggplot2::guide_legend(ncol = ncol, reverse = invert_rows))
    )
  } else {
    list(
      ggplot2::theme(legend.position = "bottom"),
      ggplot2::guides(
          fill = ggplot2::guide_legend(reverse = invert_rows),
        colour = ggplot2::guide_legend(reverse = invert_rows)
      )
    )
  }
}

#' @export
bottom_legend <- legend_bottom
