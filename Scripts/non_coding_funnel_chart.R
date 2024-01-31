fig_stacked <- plot_ly(
  type = "funnel",
  name = 'Hypoacetylated',
  y = c("Differentially acetylated regions", "5kb TSS regions"),
  x = c(8915, 3049),
  opacity = 0.8,
  textinfo = "value", 
  marker = list(color = c("#FCAE91", "#FCAE91"), line = list(width = c(1, 1, 1, 1), color = c("black", "black"))),
  connector = list(line = list(color = "grey1", dash = "dot", width = 3)),
  textfont = list(color = "black")
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
    marker = list(color = c("#BDD7E7", "#BDD7E7"), line = list(width = c(1, 1, 1, 1), color = c("black", "black"))),
    connector = list(line = list(color = "grey1", dash = "dot", width = 3)),
    textfont = list(color = "black")
  )

fig_stacked <- fig_stacked %>%
  add_trace(
    type = "funnel",
    name = "",
    y = c("Whole genome", "All acetylated regions", "Differentially acetylated regions", "5kb TSS regions"),
    x = c(4145708, 137751, 0, 0),
    opacity = 0.9,
    textinfo = "value+percent previous", 
    marker = list(color = c("#FFE082", "#4CAF50"), line = list(width = c(1, 1, 1, 1), color = c("black", "black"))),
    connector = list(line = list(color = "grey1", dash = "dot", width = 3)),
    textfont = list(size = 25, color = "black")
  )


fig_stacked <- fig_stacked %>%
  layout(yaxis = list(categoryarray = c("Whole genome", "All acetylated regions", "Differentially acetylated regions", "5kb TSS regions"),
                      tickfont = list(size = 18)),
         legend = list(font= list(size = 18))
  )