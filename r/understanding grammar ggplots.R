# Exploring some of the different grammatical elements. 
# Discovering how they can be combined in all sorts of ways to develop unique plots.
# start by creating a ggplot object from the diamonds dataset. 
# Next,  add layers onto this object to build beautiful plots.
# Define the data and aesthetics layers: map carat on the x axis and price on the y axis. 
# Assign it to an object: dia_plot. Using +, add a layer, geom_point(), to the dia_plot object. 
# This can be in a single or multiple lines. We can also call aes() within the geom_point() function. 
# Try mapping clarity to the col argument in this way.

# Create the object containing the data and aes layers: dia_plot
dia_plot <- ggplot(diamonds,aes(x=carat,y=price))

# Add a geom layer with + and geom_point()
dia_plot + geom_point()

# Add the same geom layer, but with aes() inside

dia_plot + geom_point(aes(col = clarity))

# Update dia_plot so that this time it contains all the functions to make a scatter plot instead of just the data and aes layers. 
# dia_plot <- dia_plot + .... 
# Set alpha to 0.2. Using +, plot the dia_plot object with a geom_smooth() layer on top. 
# You don't want any error shading, which can be achieved by setting the se argument in geom_smooth() to FALSE. 
# In order to plot the figure, your command should start with dia_plot + ... here. 
# Modify the geom_smooth() function from the previous instruction so that it contains aes() and map clarity to the col argument.

set.seed(1)

dia_plot <- ggplot(diamonds, aes(x = carat, y = price))

# Expand dia_plot by adding geom_point() with alpha set to 0.2
dia_plot <- dia_plot + geom_point(alpha = 0.2)

# Plot dia_plot with additional geom_smooth() with se set to FALSE
dia_plot <- dia_plot + geom_smooth(se = F)

# Copy the command from above and add aes() with the correct mapping to geom_smooth()
dia_plot <- dia_plot + geom_smooth(se = F, aes(col=clarity))
