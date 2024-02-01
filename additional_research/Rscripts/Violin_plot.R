# Load the ggplot2 library
library(ggplot2)

# Remove rows with missing values in 'AreaShape_Area'
filtered_data <- filtered_data[!is.na(filtered_data$AreaShape_Area), ]

filtered_data$SampleColor <- sapply(filtered_data$Sample, assign_colors)

# Create a violin plot
violin_plot <- ggplot(filtered_data, aes(x = Sample, y = AreaShape_Area, fill = SampleColor)) +
  geom_violin(trim = FALSE, scale = "width", alpha = 0.5) +  # Use trim = FALSE to show entire distribution
  geom_jitter(position = position_jitter(width = 0.3), size = 0.01, alpha = 0.2) +  # Add jittered points
  stat_summary(fun = mean, geom = "point", shape = 18, size = 6, color = "black", position = position_dodge(width = 0.75)) +
  stat_summary(fun.data = "mean_cl_boot", geom = "errorbar", color = "grey", position = position_dodge(width = 0.75), width = 0.25) +
  labs(title = "",
       x = "Sample",
       y = "PPARA speckle size area (pixels)") +
  scale_fill_identity() +  # Use the assigned colors
  scale_y_continuous(limits = c(0, 150)) +  # Adjust Y-axis limits
  theme_minimal() +
  theme(#panel.grid.major = element_blank(),  # Remove major gridlines
    panel.grid.minor = element_blank(),  # Remove minor gridlines
    axis.line = element_line(color = "black"),  # Add black axis lines
    axis.text.x = element_text(color = "black"),  # Set X-axis text color to black
    axis.text.y = element_text(color = "black"))

# Print the violin plot
print(violin_plot)
