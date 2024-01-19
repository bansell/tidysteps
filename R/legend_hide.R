#' No legend
#'
#' see \href{https://github.com/bansell/tidyExt#tidyext-package}{\strong{tidyExt vignette}}
#'
#' @name legend_hide
#' @description Omits ggplot2 legend.
#' @export
#' @examples
#' require(ggplot2)
#' mpg |> ggplot2::ggplot(aes(x=cty,y=hwy)) + geom_point(aes(col=drv)) + legend_hide()

legend_hide <- function()list(ggplot2::theme(legend.position='none'))
