#' Select ggplot default colour palette of n. colours
#' @name gg_col_default
#' @param nColours N colours to display
#' @param plot TRUE: plot the colour palette; or FALSE: only returns the hex codes in the console.
#' @export
gg_col_default <- function(nColours = 3, plot = TRUE){
  my_obj <- scales::hue_pal()(nColours)
  if(plot==TRUE){
      scales::show_col(my_obj)
      return(my_obj)
    }else{
      return(my_obj)
    }
}
#'
#' @examples
#' gg_col_default(3)
#'
#' gg_col_default(9)

