# Load the ggplot2 library
library(ggplot2)


# Apply the function to create a new column 'SampleColor' for colors
filtered_data$SampleColor <- sapply(filtered_data$Sample, assign_colors)


# Create a box plot
box_plot <- ggplot(filtered_data, aes(x = Sample, y = AreaShape_Area, fill = SampleColor)) +
  geom_boxplot(color = "#404040", alpha = 1) +
  geom_jitter(position = position_jitter(width = 0.4), size = 0.01, alpha = 0.3) +  # Add jittered points
  stat_summary(fun = mean, geom = "point", shape = 18, size = 6, color = "black", position = position_dodge(width = 0.75)) +
  stat_summary(fun.data = "mean_cl_boot", geom = "errorbar", color = "darkgrey", position = position_dodge(width = 0.75), width = 0.25) +
  labs(title = "",
       x = "Sample",
       y = "PPARA speckle size area (pixels)") +
  scale_fill_identity() +  # Use the assigned colors
  theme_minimal() +
  theme(#panel.grid.major = element_blank(),  # Remove major gridlines
    panel.grid.minor = element_blank(),  # Remove minor gridlines
    axis.line = element_line(color = "black"),  # Add black axis lines
    axis.text.x = element_text(color = "black"),  # Set X-axis text color to black
    axis.text.y = element_text(color = "black"))

# Print the box plot
print(box_plot)


