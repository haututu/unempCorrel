source("setup.R")

#Plot of unemployment and CPI relationship
rawPlot <- autoplot(dat) +
  geom_smooth() +
  theme_classic() +
  theme(
    plot.background = element_rect(fill = "#ecf0f1", color=NA), 
    panel.background = element_rect(fill = "#ecf0f1"),
    legend.background = element_rect(fill = "#ecf0f1"),
    plot.title = element_text(hjust = 0.5)
  ) +
  labs(
    title="Clean time series data",
    y="Percentage (%)",
    x="Time",
    color="Series"
  )