seecol()
seecol(pal_blue, n=20)
seecol(pal_darkblue)
seecol(pal_green)
seecol(pal_grey)
seecol(pal_red)
seecol(pal_unhcr)
seecol(pal_unhcr_graphic)
seecol(pal_unhcr_primary)
seecol(black)
seecol(blue)
seecol(pal_blue[3])
seecol(pal_blue, n=3)
seecol("all")

# ERRORS
seecol("all_palunhcr")
seecol("all_palunhcr_graphic")

library('ggplot2')
library(scales)


ggplot(datasets::iris) +
   geom_jitter(aes(x = Petal.Length, y = Petal.Width, color = Species), size = 3, alpha = 0.3) +
   scale_color_discrete_unhcr() +
   labs(title = "Iris petals",
        subtitle = "Les fleurs sont belles",
        caption = "Data from datasets::iris") +
   theme_unhcr(legend_title = TRUE, grid = FALSE)


scales::show_col(unhcr_discrete()(9))


ggplot(datasets::iris) +
  geom_bar(aes(x = Species), fill = blue) +
  geom_hline(yintercept = 0, size = 0.5, colour = grey_pal(0.8)) +
  labs(title = "Iris petals",
       subtitle = "Les fleurs sont belles",
       caption = "Data from datasets::iris") +
  theme_unhcr(grid = "Y")


ggplot(datasets::iris) +
  geom_bar(aes(x = Species), fill = blue) +
  geom_hline(yintercept = 0, size = 0.5, colour = usecol(pal_grey)[4]) +
  coord_flip() +
  labs(title = "Iris petals",
       subtitle = "Les fleurs sont belles",
       caption = "Data from datasets::iris") +
  theme_unhcr(grid = "X") +
  theme(axis.title.y = element_blank())

