#' stringr regex helpers
#'
#' Identifies sub-string occuring before or after character.
#' Note: these are technically all_after_last() and all_before_first() occurrences.

#'
#' @return A vector.
#' @param character A character string.
#' @describeIn all_after Extract all characters after match.
#' @export
all_after <- function(input, character, occurrence = 1) {
  # Build the regex pattern using glue
  pattern <- glue::glue("^(?:[^{character}]*{character}){{{occurrence}}}(.*)$")
  # Apply extraction
  result <- stringr::str_match(input, pattern)
  return(result[, 2])
}

#' @examples

#' stringr::str_extract('string_test', all_after("_"))
#' stringr::str_remove('string_test',  all_after("_"))
#'
#' stringr::str_extract('string/test', all_after("/"))
#' stringr::str_extract('string/test', all_before("/"))
#
#' stringr::str_extract('string_test', all_before("_"))
#' stringr::str_remove('string_test',  all_before("_"))
#
#
#' stringr::str_extract('string_test_two', all_after("_"))
#' stringr::str_remove('string_test_two',  all_after("_"))
#
#' stringr::str_extract('string_test_two', all_before("_"))
#' stringr::str_remove('string_test_two',  all_before("_"))


#' @describeIn all_after Extract all characters before match.
#'
#' @export
all_before <- function(character,occurance=1){glue::glue('[^{character}]+')}
#'






