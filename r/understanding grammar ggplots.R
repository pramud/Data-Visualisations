#Here we explore some of the different grammatical elements. Throughout this course we'll discover how they can be combined in all sorts of ways to develop unique plots. In the following instructions, you'll start by creating a ggplot object from the diamonds dataset. Next, you'll add layers onto this object to build beautiful plots.

#Define the data and aesthetics layers: map carat on the x axis and price on the y axis. Assign it to an object: dia_plot. Using +, add a layer, geom_point(), to the dia_plot object. This can be in a single or multiple lines. We can also call aes() within the geom_point() function. Try mapping clarity to the col argument in this way.

# Create the object containing the data and aes layers: dia_plot
dia_plot <- ggplot(diamonds,aes(x=carat,y=price))


# Add a geom layer with + and geom_point()
dia_plot + geom_point()

# Add the same geom layer, but with aes() inside

dia_plot + geom_point(aes(col = clarity))