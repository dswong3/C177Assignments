    housing <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/landdata-states.csv")
    head(housing[1:5])

    ##   State region    Date Home.Value Structure.Cost
    ## 1    AK   West 2010.25     224952         160599
    ## 2    AK   West 2010.50     225511         160252
    ## 3    AK   West 2009.75     225820         163791
    ## 4    AK   West 2010.00     224994         161787
    ## 5    AK   West 2008.00     234590         155400
    ## 6    AK   West 2008.25     233714         157458

    hist(housing$Home.Value)

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-1-1.png)

    library(ggplot2)
    ggplot(housing, aes(x = Home.Value)) + geom_histogram()

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-2-1.png)

    plot(Home.Value ~ Date,
         data=subset(housing, State == "MA"))
    points(Home.Value ~ Date, col="red",
           data=subset(housing, State == "TX"))
    legend(1975, 400000,
           c("MA", "TX"), title="State",
           col=c("black", "red"),
           pch=c(1, 1))

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-3-1.png)

    ggplot(subset(housing, State %in% c("MA", "TX")),
           aes(x=Date,
               y=Home.Value,
               color=State))+
      geom_point()

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-4-1.png)

    hp2001Q1 <- subset(housing, Date == 2001.25) 
    ggplot(hp2001Q1,
           aes(y = Structure.Cost, x = Land.Value)) +
      geom_point()

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-5-1.png)

    ggplot(hp2001Q1,
           aes(y = Structure.Cost, x = log(Land.Value))) +
      geom_point()

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-6-1.png)

    hp2001Q1$pred.SC <- predict(lm(Structure.Cost ~ log(Land.Value), data = hp2001Q1))

    p1 <- ggplot(hp2001Q1, aes(x = log(Land.Value), y = Structure.Cost))

    p1 + geom_point(aes(color = Home.Value)) +
      geom_line(aes(y = pred.SC))

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-7-1.png)

    p1 +
      geom_point(aes(color = Home.Value)) +
      geom_smooth()

    ## `geom_smooth()` using method = 'loess'

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-8-1.png)

    p1 + 
      geom_text(aes(label=State), size = 3)

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-9-1.png)

    library("ggrepel")
    p1 + 
      geom_point() + 
      geom_text_repel(aes(label=State), size = 3)

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-10-1.png)

    p1 +
      geom_point(aes(size = 2),
                 color="red") 

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-11-1.png)

    p1 +
      geom_point(aes(color=Home.Value, shape = region))

    ## Warning: Removed 1 rows containing missing values (geom_point).

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-12-1.png)

exercise 1
==========

    library(ggplot2)
    dat <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/EconomistData.csv")
    head(dat)

    ##   X     Country HDI.Rank   HDI CPI            Region
    ## 1 1 Afghanistan      172 0.398 1.5      Asia Pacific
    ## 2 2     Albania       70 0.739 3.1 East EU Cemt Asia
    ## 3 3     Algeria       96 0.698 2.9              MENA
    ## 4 4      Angola      148 0.486 2.0               SSA
    ## 5 5   Argentina       45 0.797 3.0          Americas
    ## 6 6     Armenia       86 0.716 2.6 East EU Cemt Asia

    plot1 <- ggplot(dat, aes(x = CPI, y = HDI))
    plot1 + geom_point(aes(size = HDI.Rank), color = "blue", size = 2)

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-13-1.png)
\#\#exercise 1 cont'd

    library(ggplot2)
    dat <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/EconomistData.csv")
    head(dat)

    ##   X     Country HDI.Rank   HDI CPI            Region
    ## 1 1 Afghanistan      172 0.398 1.5      Asia Pacific
    ## 2 2     Albania       70 0.739 3.1 East EU Cemt Asia
    ## 3 3     Algeria       96 0.698 2.9              MENA
    ## 4 4      Angola      148 0.486 2.0               SSA
    ## 5 5   Argentina       45 0.797 3.0          Americas
    ## 6 6     Armenia       86 0.716 2.6 East EU Cemt Asia

    plot1 <- ggplot(dat, aes(x = CPI, y = HDI))
    plot1 + geom_point(aes(color = Region, size = HDI.Rank))

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-14-1.png)

    args(geom_histogram)

    ## function (mapping = NULL, data = NULL, stat = "bin", position = "stack", 
    ##     ..., binwidth = NULL, bins = NULL, na.rm = FALSE, show.legend = NA, 
    ##     inherit.aes = TRUE) 
    ## NULL

    args(stat_bin)

    ## function (mapping = NULL, data = NULL, geom = "bar", position = "stack", 
    ##     ..., binwidth = NULL, bins = NULL, center = NULL, boundary = NULL, 
    ##     breaks = NULL, closed = c("right", "left"), pad = FALSE, 
    ##     na.rm = FALSE, show.legend = NA, inherit.aes = TRUE) 
    ## NULL

    p2 <- ggplot(housing, aes(x = Home.Value))
    p2 + geom_histogram()

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-16-1.png)

    p2 + geom_histogram(stat = "bin", binwidth=4000)

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-17-1.png)

    housing.sum <- aggregate(housing["Home.Value"], housing["State"], FUN=mean)
    rbind(head(housing.sum), tail(housing.sum))

    ##    State Home.Value
    ## 1     AK  147385.14
    ## 2     AL   92545.22
    ## 3     AR   82076.84
    ## 4     AZ  140755.59
    ## 5     CA  282808.08
    ## 6     CO  158175.99
    ## 46    VA  155391.44
    ## 47    VT  132394.60
    ## 48    WA  178522.58
    ## 49    WI  108359.45
    ## 50    WV   77161.71
    ## 51    WY  122897.25

    ggplot(housing.sum, aes(x=State, y=Home.Value)) + 
      geom_bar(stat="identity")

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-19-1.png)

exercise2
---------

    library(ggplot2)
    dat <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/EconomistData.csv")
    head(dat)

    ##   X     Country HDI.Rank   HDI CPI            Region
    ## 1 1 Afghanistan      172 0.398 1.5      Asia Pacific
    ## 2 2     Albania       70 0.739 3.1 East EU Cemt Asia
    ## 3 3     Algeria       96 0.698 2.9              MENA
    ## 4 4      Angola      148 0.486 2.0               SSA
    ## 5 5   Argentina       45 0.797 3.0          Americas
    ## 6 6     Armenia       86 0.716 2.6 East EU Cemt Asia

    ggplot(dat, aes(x = CPI, y = HDI)) + geom_point() + geom_smooth(method = "lm")

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-20-1.png)
\#\#exercise2 cont'd

    library(ggplot2)
    ggplot(dat, aes(x = CPI, y = HDI)) + geom_point() + geom_line(stat = "smooth", method = "loess")

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-21-1.png)
\#\#exercise2 bonus

    library(ggplot2)

    ggplot(dat, aes(x = CPI, y = HDI)) + geom_point() + geom_smooth(span = .3)

    ## `geom_smooth()` using method = 'loess'

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-22-1.png)

    p3 <- ggplot(housing,
                 aes(x = State,
                     y = Home.Price.Index)) + 
            theme(legend.position="top",
                  axis.text=element_text(size = 6))
    (p4 <- p3 + geom_point(aes(color = Date),
                           alpha = 0.5,
                           size = 1.5,
                           position = position_jitter(width = 0.25, height = 0)))

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-23-1.png)

    p4 + scale_x_discrete(name="State Abbreviation") +
      scale_color_continuous(name="",
                             breaks = c(1976, 1994, 2013),
                             labels = c("'76", "'94", "'13"))

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-24-1.png)

    p4 +
      scale_x_discrete(name="State Abbreviation") +
      scale_color_continuous(name="",
                             breaks = c(1976, 1994, 2013),
                             labels = c("'76", "'94", "'13"),
                             low = "blue", high = "red")

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-25-1.png)

    p4 +
      scale_color_continuous(name="",
                             breaks = c(1976, 1994, 2013),
                             labels = c("'76", "'94", "'13"),
                             low = "blue", high = "red")

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-26-1.png)

    p4 +
      scale_color_gradient2(name="",
                            breaks = c(1976, 1994, 2013),
                            labels = c("'76", "'94", "'13"),
                            low = "blue",
                            high = "red",
                            mid = "gray60",
                            midpoint = 1994)

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-27-1.png)

exercise3
---------

    library(ggplot2)

    ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +
    geom_point() +
    scale_x_continuous(name = "Corruption Perception Index") + scale_y_continuous(name = "Human Development Index") + scale_colour_manual(name = "Region of the world", values = c("green"))

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-28-1.png)

    p5 <- ggplot(housing, aes(x = Date, y = Home.Value))
    p5 + geom_line(aes(color = State))

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-29-1.png)

    (p5 <- p5 + geom_line() +
       facet_wrap(~State, ncol = 10))

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-30-1.png)

    p5 + theme_linedraw()

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-31-1.png)

    p5 + theme_light()

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-32-1.png)

    p5 + theme_minimal() +
      theme(text = element_text(color = "turquoise"))

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-33-1.png)

    theme_new <- theme_bw() +
      theme(plot.background = element_rect(size = 1, color = "blue", fill = "black"),
            text=element_text(size = 12, family = "Serif", color = "ivory"),
            axis.text.y = element_text(colour = "purple"),
            axis.text.x = element_text(colour = "red"),
            panel.background = element_rect(fill = "pink"),
            strip.background = element_rect(fill = "orange"))
    p5 + theme_new

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-34-1.png)

    housing.byyear <- aggregate(cbind(Home.Value, Land.Value) ~ Date, data = housing, mean)
    ggplot(housing.byyear,
           aes(x=Date)) +
      geom_line(aes(y=Home.Value), color="red") +
      geom_line(aes(y=Land.Value), color="blue")

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-35-1.png)

    library(tidyr)
    home.land.byyear <- gather(housing.byyear,
                               value = "value",
                               key = "type",
                               Home.Value, Land.Value)
    ggplot(home.land.byyear,
           aes(x=Date,
               y=value,
               color=type)) +
      geom_line()

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-36-1.png)

challenge
---------

    library(ggplot2)
    dat <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/EconomistData.csv")

    #plot basics
    pc1 <- ggplot(dat, aes(x = CPI, y = HDI, color = Region))
    #add trendline
    pc2 <- pc1 + geom_smooth(aes(group = 1),method = "lm", formula = y ~ log(x), se = FALSE, color = "red") + geom_point()
    #make adjustments & add labels
    pc3 <- pc2 + geom_point(shape = 1, size = 3, stroke = 1)
    pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan", "Afghanistan", "Congo", "Greece", "Argentina", "Brazil","India", "Italy", "China", "South Africa", "Spane", "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France", "United States", "Germany", "Britain", "Barbados", "Norway", "Japan", "New Zealand", "Singapore")
    #color
    pc4 <- pc3 + geom_text(aes(label = Country),color = "gray20",data = subset(dat, Country %in% pointsToLabel))

    library("ggrepel")
    pc4 <- pc3 +geom_text_repel(aes(label = Country),color = "gray20",data = subset(dat, Country %in% pointsToLabel), force = 10)
    #label countries
    dat$Region <- factor(dat$Region,
                         levels = c("EU W. Europe",
                                    "Americas",
                                    "Asia Pacific",
                                    "East EU Cemt Asia",
                                    "MENA",
                                    "SSA"),
                         labels = c("OECD",
                                    "Americas",
                                    "Asia &\nOceania",
                                    "Central &\nEastern Europe",
                                    "Middle East &\nnorth Africa",
                                    "Sub-Saharan\nAfrica"))

    library(grid)
    pc5 <- pc4 + scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)",limits = c(.9, 10.5), breaks = 1:10) + scale_y_continuous(name = "Human Development Index, 2011 (1=Best)",limits = c(0.2, 1.0),breaks = seq(0.2, 1.0, by = 0.1)) + scale_color_manual(name = "",
                         values = c("deepskyblue4",
                                    "deepskyblue3",
                                    "deepskyblue2",
                                    "darkcyan",
                                    "brown3",
                                    "brown4")) +
      ggtitle("Corruption and Human development")

    #making final tweaks to aesthetics
    library(grid) 
    pc6 <- pc5 + theme_minimal() + theme(text = element_text(color = "gray20"),
            legend.position = c("top"),  
            legend.direction = "horizontal",
            legend.justification = 0.1, 
            legend.text = element_text(size = 11, color = "gray10"),
            axis.text = element_text(face = "italic"),
            axis.title.x = element_text(vjust = -1), 
            axis.title.y = element_text(vjust = 2), 
            axis.ticks.y = element_blank(), 
            axis.line = element_line(color = "gray40", size = 0.5),
            axis.line.y = element_blank(),
            panel.grid.major = element_line(color = "gray50", size = 0.5),
            panel.grid.major.x = element_blank()
            )
    pc6

![](exercise-8-lab-homework_files/figure-markdown_strict/unnamed-chunk-37-1.png)

\`\`\`
