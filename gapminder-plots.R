download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv",
              "data/gapminder-FiveYearData.csv")

gapminder <- read.csv("data/gapminder-FiveYearData.csv")

library(ggplot2)
head(gapminder)

ggplot(gapminder, aes(gdpPercap, lifeExp)) +
    geom_point(aes(color = continent)) + scale_x_log10() + geom_smooth()


# plot of life exp in Japan over time
japan_gapminder <- gapminder[gapminder$country == "Japan", ]

ggplot(japan_gapminder, aes(x = year, y =lifeExp)) +
    geom_line(color = "coral") +
    ylab("Life Expectancy") +
    xlab("Year") +
    ggtitle("Japan Plot")
