# Assuming your dataframe is named 'PPRE_variant_regulomedb'
df <- PPRE_variant_regulomedb

# Load ggplot2 library
library(ggplot2)

# Define the order of dbSNP values
order_dbSNP <- c("rs41309132", "rs182437666", "rs150514774", 
                 "rs1365507", "rs61995742", "rs1157595", 
                 "rs2622909", "rs1936003")

# Set dbSNP as a factor with the specified order
df$dbSNP <- factor(df$dbSNP, levels = order_dbSNP)

# Define colors for each dbSNP value
colors <- c("rs41309132" = "#9D9DB7", "rs182437666" = "#E7614D", 
            "rs150514774" = "#6A9FCF", "rs1365507" = "#E590D1", 
            "rs61995742" = "#8AC25B", "rs1157595" = "#E09C45", 
            "rs2622909" = "#A763A9", "rs1936003" = "#6BB9A7")

# Create a bar chart with custom colors and specified order
PPRE_plot <- ggplot(df, aes(x = dbSNP, y = Score, fill = dbSNP)) +
  geom_bar(stat = "identity", width = 0.8) +
  scale_fill_manual(values = colors) +
  labs(title = "Score Distribution for dbSNP Variants",
       x = "Variant",
       y = "Score") +
  theme_minimal() +
  theme(axis.text.x = element_blank())  # Remove X-axis labels

print(PPRE_plot)

