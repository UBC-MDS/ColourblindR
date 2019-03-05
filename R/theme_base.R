#' ColourblindR script for theme_base (Internal function)
#'
#' This function implements a base theme that makes plots more intepretable for viewers in general
#' It modifies the layout of the plot.
#'

theme_base <- function(colour_type){

    #' @description theme_base()
    #'
    #' @details Create your plot via ggplot2 and apply our theme to enhance plots to be more readable for colourblind viewers

   theme_bw() +
       theme(text = element_text(family = "sans", color = "black",
                                 face = "plain", size = 16,
                                 hjust = 0.5, vjust = 0.5, angle = 0,
                                 lineheight = 1,
                                 margin = margin(.7, .7,
                                                 .7, .7),
                                 debug = FALSE),
             plot.title = element_text(family = "sans",
                                       size = 22, color = "black"),
             plot.background = element_rect(color = "white", fill = "white"),
             panel.background = element_rect(color = "white", fill = "white"),
             # axis options
             axis.text = element_text(family = "sans", color = "black", size = 12),
             axis.title = element_text(size = 16),
             # legend options (for ratings plot)
             legend.title = element_text(family = "sans", color = "black"),
             legend.text = element_text(family = "sans", color = "black",
                                        size = 12),
             legend.position = "right",
             legend.key = element_rect(colour = "black", linetype = "solid", size = 0.25),
             legend.background = element_rect(color = "white", fill = "white",
                                              linetype = "solid"))
}
