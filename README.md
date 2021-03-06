# Clarity (ggplot2 theme)

[![Build Status](https://travis-ci.org/eclarke/eclthemes.svg?branch=master)](https://travis-ci.org/eclarke/eclthemes)

A sane ggplot2 theme with large text and clean lines, suitable for presentations. Based off the fivethirtyeight theme from [ggthemes](https://github.com/jrnold/ggthemes).

Install using `devtools::install_github("eclarke/eclthemes")`.


```r
library(ggplot2)
library(eclthemes)
library(nycflights13)

flights <- within(flights, {
  dep_time_min <- hour*60 + minute
})

ggplot(flights, aes(dep_time_min, color=origin, group=origin, fill=origin)) +
  geom_density(alpha=0.5) +
  theme_clarity() +
  ylab("Density") +
  xlab("Departure (minutes from midnight)") +
  ggtitle("Outgoing flights by time of day")
```

![](README_files/figure-html/example-figure-1.png) 

To make these plots a little bit more publication quality:


```r
library(grid)
ggplot(mtcars, aes(mpg, group=factor(cyl))) + 
  geom_density(alpha=0.5, aes(color=factor(cyl)), show_guide=FALSE) +
  geom_density(alpha=0.5, aes(fill=factor(cyl)), color=NA) + 
  theme_clarity(base_size = 14) +
  theme(
    axis.line = element_line(size=0.8),
    strip.background = element_blank(),
    strip.text = element_text(hjust=0.5),
    axis.ticks = element_line(size=0.8)
  ) +
  scale_y_continuous(expand = c(0,0), limit=c(0, 0.25)) +
  scale_x_continuous(expand = c(0,0), limit=c(10, 35)) +
  scale_fill_discrete("Cylinders") +
  scale_color_discrete("Cylinders") +
  labs(x="Miles per gallon", y="Density") +
  guides(fill=guide_legend(override.aes = list(alpha=1, color="black")))
```

![](README_files/figure-html/unnamed-chunk-1-1.png) 

