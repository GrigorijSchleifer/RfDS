# What happens if you facet on a continuous variable?
# What do the empty cells in the plot above with facet_grid(drv ~ cyl) mean? Run the following code. How do they relate to the resulting plot?
ggplot(mpg) + 
    geom_point(aes(x = drv, y = cyl)) +
    facet_wrap(~displ)

ggplot(mpg) + 
    geom_point(aes(x = drv, y = cyl)) +
    facet_grid(drv ~ cyl)

# What plots does the following code make? What does . do?
# NOOOO -> wow ... left is for x axis and righj . is for the y axis?

# facet only by the row 
ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy)) +
    facet_grid(drv ~ .)

# facet only by the column
ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy)) +
    facet_grid(. ~ cyl)
# Take the first faceted plot in this section:
    
    ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy)) + 
    facet_wrap(~ cyl, nrow = 2)

# What are the advantages to using faceting instead of the color aesthetic? What are the disadvantages? How might the balance change if you had a larger dataset?
    
# Read ?facet_wrap. What does nrow do? What does ncol do? What other options control the layout of the individual panels? Why doesn’t facet_grid() have nrow and ncol arguments?
    
# Which of the following plots makes it easier to compare engine size (displ) across cars with different drive trains? What does this say about when to place a faceting variable across rows or columns?

ggplot(mpg, aes(x = displ)) + 
    geom_histogram() + 
    facet_grid(drv ~ .)

ggplot(mpg, aes(x = displ)) + 
    geom_histogram() +
    facet_grid(. ~ drv)

# Recreate the following plot using facet_wrap() instead of facet_grid(). How do the positions of the facet labels change?
    
ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy)) +
    facet_grid(drv ~ .)


# 4

# facet
ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy)) + 
    facet_wrap(~ class, nrow = 3) # how many rows should be created for the facet

# color
ggplot(mpg) + 
    geom_point(aes(x = displ, y = hwy, color = class))

# both
ggplot(mpg) + 
    geom_point(
        aes(x = displ, y = hwy, color = class), 
        show.legend = FALSE) + 
    facet_wrap(~ class, nrow = 2)

# highlighting
ggplot(mpg, aes(x = displ, y = hwy)) + 
    geom_point(color = "gray") +
    geom_point(
        data = mpg %>% filter(class == "compact"),
        color = "pink"
    )
