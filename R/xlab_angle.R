
#' Set x axis labels at any angle
#' @param x angle in degrees
#' @aliases x_angle
#' @export
#' @examples
#' require(ggplot2)
#' mpg |> ggplot2::ggplot(aes(x=manufacturer,y=hwy)) + geom_boxplot() + xlab_angle(45)

xlab_angle <- function(x = 30) ggplot2::theme(axis.text.x = ggplot2::element_text(angle = x, hjust = 1))

#' @export
x_angle <- xlab_angle
