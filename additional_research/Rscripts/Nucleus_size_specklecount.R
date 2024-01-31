Nuclei_cardiomyocyte$Sample <- factor(Nuclei_cardiomyocyte$Sample, levels = c("Control1", "Control2", "Control4", "PLN1", "PLN2", "PLN3", "PLN4", "PLN5", "PLN6"))

# Define specific colors for each sample
sample_colors <- c("Control1" = "#006080", "Control2" = "#008FC4", "Control4" = "#66B9E3",
                   "PLN1" = "#B12F1D", "PLN2" = "#D74C3D", "PLN3" = "#F87766",
                   "PLN4" = "#FFA099", "PLN5" = "#FFC4BF", "PLN6" = "#FFE0DA")

# Create the plot with a logarithmic X-axis, custom legend title and labels
speckle_plot_divided <- ggplot(Nuclei_cardiomyocyte, aes(x = Size, y = Speckles, color = Sample)) +
  geom_point(size = 3) +
  scale_x_log10() +  # Logarithmic X-axis
  labs(title = "",
       x = "Nucleus size (pixels)",
       y = "PPARA speckles (count)",
       color = "Sample") +
  theme_minimal() +
  scale_color_manual(values = sample_colors) +  # Set specific colors
  guides(shape = guide_legend(override.aes = list(size = 5))) +
  theme(panel.grid.major = element_blank(),   # Remove major gridlines
        panel.grid.minor = element_blank(),   # Remove minor gridlines
        axis.line = element_line(color = "black")) +   # Add axis lines
  scale_x_continuous(breaks = c(5000, 10000, 20000, 35000, 60000), labels = c("5000", "10000", "20000", "35000", "60000"), trans = "log10") +


# Print the plot
print(speckle_plot_divided)

