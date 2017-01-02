#' Show me an XKCD comic
#'
#' Plots to
#' @importFrom magrittr %>%
#' @importFrom rvest html_node html_attr
#' @param num optional; which XKCD number do you want to see? Default is random
#' @param print_alt should we print the alt text?
#'
#' @return plots a comic
#' @export
#'
#' @examples
#' xkcd()
#' xkcd(123)
xkcd <- function(num = NULL, print_alt = TRUE) {
    page_url <- sprintf("https://xkcd.com/%s/", num)
    if (is.null(num)) {
        page_url <- "https://c.xkcd.com/random/comic/"
    }
    page_html <- tryCatch({
        xml2::read_html(page_url)
    }, error = function(err) {
        stop(sprintf("Comic number %s not found", num))
    })
    img_url <- page_html %>%
        html_node("#comic img") %>%
        html_attr("src") %>%
        paste0("https:", .)
    alt_text <- page_html %>%
        html_node("#comic img") %>%
        html_attr("alt")
    title_text <- page_html %>%
        html_node("#comic img") %>%
        html_attr("title")
    if(print_alt) {
    write(sprintf("%s: %s", alt_text, title_text),
          file = stdout())
    }
    img_url %>% plot_img
}
