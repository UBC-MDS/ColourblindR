#' ColourblindR script for tritanopia
#'
#' This function implements a theme that makes plots more intepretable for viewers with tritanopia
#' It modifies the colour of geometric objects (points, lines, etc) and the layout of the plot.
#'

theme_trita <-function(colour_type){
#' @param colour_type either fill colour of colour depending on the geom of choice
   #'
   #' @description: theme_deutera() creates a theme with a Deuteranopia friendly colour palette that can be used on
   #' both colour and fill aesthetics.
   #' Use it in conjuction with ggplot2
   #'
   #' @usage: ggplot(data, aes(variable x, variable y)) + geom_point() + theme_deutera()
   #'
   #' @details: Create your plot via ggplot2 and apply our theme to enhance plots to be more readable for colourblind viewers
   #' @export
   #' @examples:
   #'
   #' p <- ggplot(mpg, aes(x = hwy, y = cty, fill = as.factor(cyl))) +geom_bar(stat = 'identity')
   #' cowplot::plot_grid(p, p + theme_deutera(colour_type = 'fill'))
   #'
   #' p <- ggplot(mpg, aes(x = hwy, y = cty, colour = as.factor(cyl))) + geom_point(stat = 'identity')
   #' cowplot::plot_grid(p, p +  theme_deutera(colour_type = 'colour'))
   #'
   #' ggplot(mpg, aes(hwy, colour = as.factor(cyl))) + geom_density()
   #' cowplot::plot_grid(p, p +  theme_deutera(colour_type = 'colour'))
   #'
   #' @return reformatted plot for deuteranopia vision

   theme_set(theme_base())

   cb_palette <- c('#5F727A', '#FFB7C2', '#01919A', '#A8A8B4', '#BDE6F4','#4A3F45', '#B77B87', '#00585C', '#932929')

   if (colour_type == 'fill'){
       scale_fill_manual(values = cb_palette)
   } else if (colour_type %in% c('colour', 'color')){
       scale_colour_manual(values = cb_palette)
   } else{
       stop('colour_type expects either fill, colour or color.
            For more information look at the documentation with ?theme_*.')
   }
}
