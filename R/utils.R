#' Plot an image from url
#'
#' Parses a url to be either jpeg or png and finds appropriate function to plot
#'
#' @param src path to url
#'
#' @return plots picture
#' @export
#'
#' @examples
#' plot_img("https://www.r-project.org/logo/Rlogo.png")
plot_img <- function(src) {
    plot.new()
    if (grepl(pattern = ".jpg$", src)) {
        plot_jpg(src)
    } else if (grepl(pattern = ".png$", src)) {
        plot_png(src)
    } else {
        stop("not implemented")
    }
}

#' Plot a png file from url
#'
#' @importFrom magrittr %>%
#' @param src url to png file
#' @return plotted image
#' @export
#'
#' @examples
#' plot_png("https://www.r-project.org/logo/Rlogo.png")
plot_png <- function(src) {
    raster_img <- src %>%
        httr::GET() %>%
        httr::content("raw") %>%
        png::readPNG() %>%
        as.raster()
    plot(raster_img)
}

#' Plot a jpg file from url
#'
#' @importFrom magrittr %>%
#' @param src url to jpg file
#' @return plotted image
#' @export
#'
#' @examples
#' plot_png("https://www.r-project.org/logo/Rlogo.png")
plot_jpg <- function(src) {
    raster_img <- src %>%
        httr::GET() %>%
        httr::content("raw") %>%
        jpeg::readJPEG() %>%
        as.raster()
    plot(raster_img)
}
