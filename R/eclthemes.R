
#' A clean theme based on ggthemes::theme_fivethirtyeight, but with a white
#' background, axis titles, and a vertical legend on the right.
#' @inheritParams ggplot2::theme_bw
#' @export
#' @examples
#'  ggplot(mtcars, aes(mpg, color=factor(cyl), fill=factor(cyl), group=factor(cyl))) +
#'  geom_density(alpha=0.5) + theme_ecl()
theme_ecl <- function(base_size = 20, base_family = "sans") {
  ggplot2::theme_bw() +
    ggthemes::theme_fivethirtyeight(base_size, base_family) +
    ggplot2::theme(
      rect = ggplot2::element_rect(fill="white"),
      axis.text = element_text(),
      axis.title = element_text(),
      axis.title.y = element_text(vjust = 1),
      axis.title.x = element_text(vjust = 0),
      legend.position = "right",
      legend.direction = "vertical"
    )
}
