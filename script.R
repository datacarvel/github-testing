library(tidyverse)

WarioDF <- tibble(
  col1 = sample(
    c(1:100), size = 20, replace = F
  ),
  col2 = sample(
    c(1:100), size = 20, replace = F
  )
)

ggplot(WarioDF, aes(x = col1, y = col2)) +
  geom_point() +
  theme_minimal() +
  theme(
    plot.caption = element_text(margin = margin(t = 10, unit = "pt")),
    plot.margin = margin(18,18,18,18, unit = "pt"),
    plot.subtitle = element_text(margin = margin(b = 10, unit = "pt"))
  ) +
  labs(
    title = "This is just a test",
    subtitle = "One two one two",
    caption = "Source : Beastie Boys - Just a Test (Hello Nasty)"
  )