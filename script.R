library(tidyverse)
library(ragg)
library(textshaping)
library(systemfonts)

fontss <- system_fonts()


WarioDF <- tibble(
  col1 = sample(
    c(1:100), size = 20, replace = F
  ),
  col2 = sample(
    c(1:100), size = 20, replace = F
  )
)

ggplot(WarioDF, aes(x = col1, y = col2)) +
  geom_point(color = "green", size = 4) +
  theme_minimal() +
  theme(
    text = element_text(color = "green", family = "BankGothic"),
    title = element_text(color = "green", face = "bold", family = "BankGothic DB"),
    plot.title = element_text(size = 22),
    plot.title.position = "plot",
    plot.caption = element_text(margin = margin(t = 10, unit = "pt"), size = 8),
    plot.margin = margin(18,18,18,18, unit = "pt"),
    plot.subtitle = element_text(margin = margin(b = 20, unit = "pt"), size = 16),
    plot.background = element_rect(fill = "black"),
    axis.line = element_line(color = "green"),
    axis.text = element_text(color = "green", size = 14),
    axis.title.x = element_text(margin = margin(t = 15, unit = "pt")),
    axis.title.y = element_text(margin = margin(r = 15, unit = "pt")),
    panel.grid = element_line(color = "green")
  ) +
  labs(
    title = "This is just a test",
    subtitle = "One two one two",
    caption = "Source : Beastie Boys - Just a Test (Hello Nasty)",
    x = "horizontal axis",
    y = "vertical axis"
  ) +
  coord_cartesian(clip = "off", expand = F)