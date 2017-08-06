download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv",
              "data/gapminder-FiveYearData.csv")

gapminder <- read.csv("data/gapminder-FiveYearData.csv")

library(ggplot2)
head(gapminder)

ggplot(gapminder, aes(gdpPercap, lifeExp)) +
    geom_point()