
#' Set y axis labels at any angle
#' @param y angle in degrees
#' @aliases y_angle
#' @export
#' @examples
#' require(ggplot2)
#' mpg |> ggplot2::ggplot(aes(x=hwy,y=manufacturer)) + geom_boxplot() + ylab_angle(45)

ylab_angle <- function(y = 30) ggplot2::theme(axis.text.y = ggplot2::element_text(angle = y, hjust = 1))

#' @export
y_angle <- ylab_angle
