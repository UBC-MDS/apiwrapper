#' Template
#'
#' @param num A number to learn about.
#' @param type The category in which to learn.
#'
#' @return The a fact about \code{num} in \code{type} category.
#' @examples
#' template(42, "math")
#'
#' @import dplyr
#' @importFrom magrittr "%>%"
#' @import stringr
#' @import httr
#'
#' @export
template <- function(num, type) {

  out <- stringr::str_c("http://numbersapi.com/", num, "/", type) %>%
    httr::GET() %>%
    httr::content()

  return(out)
}
