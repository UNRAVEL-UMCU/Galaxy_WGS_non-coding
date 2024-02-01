transposed_variants <- as.data.frame(t(Variants_PLN_PPRE[-1]))
colnames(transposed_variants) <- Variants_PLN_PPRE$ID
transposed_variants <- transposed_variants %>%
  mutate(Sample = rownames(transposed_variants)) %>%
  gather(Variant, Count, -Sample)

variant_counts <- transposed_variants %>%
  group_by(Variant) %>%
  summarise(Total_Count = sum(Count)) %>%
  arrange(desc(Total_Count)) %>%
  pull(Variant)

transposed_variants$Variant <- factor(transposed_variants$Variant, levels = variant_counts)

plot_variants <- ggplot(transposed_variants, aes(x = Sample, y = Count, fill = Variant)) +
  geom_bar(stat = "identity") +
  labs(title = "PPRE variants in PLN carriers",
       x = "PLN carrier",
       y = "") +
  scale_fill_brewer(palette = "Paired") + 
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1, color = "black", family = "Arial"),
        axis.text.y = element_text(color = "black", family = "Arial"),
        plot.title = element_text(family = "Arial"),
        axis.title.x = element_text(family = "Arial"),
        axis.title.y = element_text(family = "Arial"),
        legend.text = element_text(family = "Arial"),
        legend.title = element_text(family = "Arial"))

