library(MASS)
library(ggplot2)
mammals
summary(mammals)
str(mammals)

#obvious first step is to make a scatter plot

ggplot(mammals,aes(x= body, y = brain)) + geom_point()

# extending the plot by giving a linear model 

ggplot(mammals,aes(x= body, y = brain)) + geom_point() + stat_smooth(method = "lm", col = "red" , se =F)

# this is a pretty poor model as because of few extreme values have large influence
# applying log transformation on both variables
#EXPLORING AND FINE TUNING 

ggplot(mammals, aes(x= body, y = brain))+ geom_point() +
    coord_fixed() + 
    scale_x_log10() +
    scale_y_log10() + 
    stat_smooth(method = "lm", col = "#C42126" , se =F, size = 1)

# ------------MTCARS
# Explore the mtcars data frame with str()

str(mtcars)

# Execute the following command
ggplot(mtcars, aes(x = cyl, y = mpg)) +
    geom_point()

# changing cyl as factor

ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
    geom_point()

# Essential Grammatical elements (7 in total but 3 are essential )
#   - Data              | Data set being plotted
#   - Aesthetics        | the scales onto which we map data
#   - Geometries        | the visual elements used for our data

#others
#   - Facets        | plotting small multiples
#   - Statistics    | representations of out data to aid understanding
#   - Coordinates   | the space on which the data will be plotted
#   - Themes        | all non data ink
 
# first command below, It plots the mpg (miles per galon) against the weight (in 1,000 pounds).
# In the second call of ggplot()The color is dependent on the displacement of the car engine, found in disp.
# In the third call of ggplot() The size is dependent on the displacement of the car engine, found in disp.

ggplot(mtcars, aes(x = wt, y = mpg)) +
    geom_point()

ggplot(mtcars, aes(x = wt, y = mpg, col = disp)) +
    geom_point()

ggplot(mtcars, aes(x = wt, y = mpg,  size = disp)) +
    geom_point()

# below gives an error
# Error: A continuous variable can not be mapped to shape
ggplot(mtcars, aes(x = wt, y = mpg, shape = disp)) +
    geom_point()

# Another argument of aes() is the shape of the points.
# There is a finite amount of shapes which ggplot() can automatically assign to the points. 
# shape only makes sense with categorical data, and disp is continuous.

#ggplot layers

#first layer is data - we need some data to plot
#next layer is aesthetics
#third layer is geometry

# Explore the diamonds data frame with str()

str(diamonds)

# Add geom_point() with +
# Use the + operator to add geom_point() to the first ggplot() command. This will tell ggplot2 to draw points on the plot.

ggplot(diamonds, aes(x = carat, y = price)) + geom_point() 

# Add geom_point() and geom_smooth() with +
# Use the + operator to add geom_point() and geom_smooth(). 
# These just stack on each other! geom_smooth() will draw a smoothed line over the points.
ggplot(diamonds, aes(x = carat, y = price)) + geom_point() + geom_smooth()

