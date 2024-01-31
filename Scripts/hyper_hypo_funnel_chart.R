fig_stacked <- plot_ly(
  type = "funnel",
  name = 'Hypoacetylated',
  y = c("Differentially acetylated regions", "5kb TSS regions"),
  x = c(8915, 3049),
  opacity = 0.8,
  textinfo = "value", 
  marker = list(color = c("#FCAE91", "#FCAE91"), line = list(width = c(3, 2, 2, 1), color = c("black", "black"))),
  connector = list(line = list(color = "grey1", dash = "dot", width = 3)),
  textfont = list(size = 30, color = "black")
)

fig_stacked <- fig_stacked %>%
  add_trace(
    type = "funnel",
    name = 'Hyperacetylated',
    orientation = "h",
    y = c("Differentially acetylated regions", "5kb TSS regions"),
    x = c(5347, 1539),
    opacity = 0.8,
    textposition = "inside",
    textinfo = "value",
    marker = list(color = c("#BDD7E7", "#BDD7E7"), line = list(width = c(3, 2, 2, 1), color = c("black", "black"))),
    connector = list(line = list(color = "grey1", dash = "dot", width = 3)),
    textfont = list(size = 30, color = "black")
  )


 fig_stacked <- fig_stacked %>%
   layout(yaxis = list(categoryarray = c("Differentially acetylated regions", "5kb TSS regions")))