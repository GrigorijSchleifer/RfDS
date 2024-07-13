# What geom would you use to draw a line chart? A boxplot? A histogram? An area chart?
ggplot(mpg, aes(x = hwy, y = model)) +
    geom_line()
# Earlier in this chapter we used show.legend without explaining it
ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_smooth(aes(color = drv), show.legend = TRUE)

# What does show.legend = FALSE do here? What happens if you remove it? Why do you think we used it earlier?
ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_smooth(aes(color = drv), show.legend = FALSE)


# What does the se argument to geom_smooth() do?
# with or without cofidence interval around the 
ggplot(mpg, aes(x = year, y = cyl)) +
    geom_point() +
    geom_smooth(se = FALSE)
    
# Recreate the R code necessary to generate the following graphs. Note that wherever a categorical variable is used in the plot, it’s drv.
ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point(stroke = 10) +
    geom_smooth(se = FALSE, )


ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point(stroke = 10) +
    geom_smooth(se = FALSE, aes(color = drv))


ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point(stroke = 10) +
    geom_smooth(se = FALSE, aes(group = drv))


ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point(stroke = 5, aes(colour = drv)) +
    geom_smooth(se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point(size = 5, aes(colour = drv)) +
    geom_smooth(se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) +
    geom_point(stroke = 5, aes(colour = drv)) +
    geom_smooth(aes(color = drv), se = FALSE)


ggplot(mpg, aes(x = displ, y = hwy)) + 
    geom_point(aes(color = drv)) +
    geom_smooth(aes(linetype = drv), se = FALSE)


ggplot(mpg, aes(x = displ, y = hwy)) + 
    geom_point(size = 4, color = "white", stroke = 10) + 
    geom_point(shape = 22, aes(color = drv))
