
#' A clean theme based on ggthemes::theme_fivethirtyeight, but with a white
#' background, axis titles, and a vertical legend on the right.
#' @inheritParams ggplot2::theme_bw
#' @export
#' @examples
#'
#' library(ggplot2)
#' library(eclthemes)
#'
#' mtcars$cyl <- factor(mtcars$cyl)
#'
#' ggplot(mtcars, aes(mpg, group=cyl)) +
#'   geom_density(alpha=0.5, aes(color=cyl, fill=cyl)) +
#'   theme_clarity(base_size=14)
#'

theme_clarity <- function(base_size = 20, base_family = "sans") {
  ggplot2::theme_bw() +
    ggthemes::theme_fivethirtyeight(base_size, base_family) +
    ggplot2::theme(
      rect = ggplot2::element_rect(fill="white"),
      axis.text = ggplot2::element_text(),
      axis.title = ggplot2::element_text(),
      axis.title.y = ggplot2::element_text(vjust = 1),
      axis.title.x = ggplot2::element_text(vjust = 0),
      plot.title = ggplot2::element_text(vjust = 1),
      legend.position = "right",
      legend.direction = "vertical"
    )
}

