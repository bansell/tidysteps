#' Print complete path of current file
#' @export

print_scriptdir <- function(){ cat(rstudioapi::getActiveDocumentContext()$path )}

#' @examples
#' print_scriptdir()
