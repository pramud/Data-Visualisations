library(MASS)
mammals
summary(mammals)
str(mammals)
library(ggplot2)

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
 
# ggplot2 has already been loaded for you. Take a look at the first command. It plots the mpg (miles per galon) against the weight (in 1,000 pounds). You don't have to change anything about this command.

# In the second call of ggplot() change the col argument in aes() (which stands for aesthetics). The color should be dependent on the displacement of the car engine, found in disp.

# In the third call of ggplot() change the size argument in aes() (which stands for aesthetics). The size should be dependent on the displacement of the car engine, found in disp.

# A scatter plot has been made for you
ggplot(mtcars, aes(x = wt, y = mpg)) +
    geom_point()

# Replace ___ with the correct vector
ggplot(mtcars, aes(x = wt, y = mpg, col = disp)) +
    geom_point()

# Replace ___ with the correct vector
ggplot(mtcars, aes(x = wt, y = mpg,  size = disp)) +
    geom_point()