# Used to create consistent figure themes
figure_theme_with_top_legend <-
    theme_bw() +
    theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        axis.ticks = element_blank(),
        axis.title.x = element_text(size = 10, vjust = 0.5),
        axis.title.y = element_text(size = 10, angle = 90, vjust = 0.5),
        legend.text = element_text(size = 8),
        legend.title = element_text(size = 8),
        legend.key = element_blank(),
        legend.position = "top",
        legend.direction = "horizontal",
        plot.caption = element_text(size = 10),
        strip.text.x = element_text(size = 10),
        legend.background = element_rect(color = "black", size = .5, linetype = "solid")
    )
figure_theme_without_legend_position <-
    theme_bw() +
    theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        axis.ticks = element_blank(),
        axis.title.x = element_text(size = 10, vjust = 0.5),
        axis.title.y = element_text(size = 10, angle = 90, vjust = 0.5),
        legend.text = element_text(size = 8),
        legend.title = element_text(size = 8),
        legend.key = element_blank(),
        plot.caption = element_text(size = 10),
        strip.text.x = element_text(size = 10),
        legend.background = element_rect(color = "black", size = .5, linetype = "solid")
    )
figure_theme_without_legend <-
    theme_bw() +
    theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        axis.ticks = element_blank(),
        axis.title.x = element_text(size = 10, vjust = 0.5),
        axis.title.y = element_text(size = 10, angle = 90, vjust = 0.5),
        legend.key = element_blank(),
        legend.position = "none",
        plot.caption = element_text(size = 10),
        strip.text.x = element_text(size = 10)
    )