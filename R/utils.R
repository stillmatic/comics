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

plot_png <- function(src) {
    raster_img <- src %>%
        httr::GET() %>%
        httr::content("raw") %>%
        png::readPNG() %>%
        as.raster()
    plot(raster_img)
}

plot_jpg <- function(src) {
    raster_img <- src %>%
        httr::GET() %>%
        httr::content("raw") %>%
        jpeg::readJPEG() %>%
        as.raster()
    plot(raster_img)
}
