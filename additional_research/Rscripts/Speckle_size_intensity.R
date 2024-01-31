library(ggplot2)

sample_type_colors <- c("#008FC4", "#F87766")

# Create the plot
speckle_data_plot_divided <- ggplot(filtered_data, aes(x = AreaShape_Area, y = Intensity_IntegratedIntensity_PPARAgray, color = sample_type)) +
  geom_point(size = 1, alpha = 1) +
  labs(title = "",
       x = "Speckle size (pixels)",
       y = "Speckle intensity",
       color = "Sample") +
  theme_minimal() +
  scale_color_manual(values = sample_type_colors) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_line(color = "black")) +
  geom_smooth(method = "lm", se = FALSE, color = "black")
