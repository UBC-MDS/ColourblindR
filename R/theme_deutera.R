#' ColourblindR script for deuteranopia
#'
#' This function implements a theme that makes plots more intepretable for viewers with deuteranopia.
#' It modifies the colour of geometric objects (points, lines, etc) and the layout of the plot.


theme_deutera <- function(colour_type){
   #' @param colour_type either fill colour of colour depending on the geom of choice
   #'
   #' @description: theme_deutera() creates a theme with a Deuteranopia friendly colour palette that can be used on
   #' both colour and fill aesthetics.
   #' Use it in conjuction with ggplot2
   #'
   #' @usage: ggplot(data, aes(variable x, variable y, colour = class)) + geom_point() + theme_deutera('colour')
   #'
   #' @details: Create your plot via ggplot2 and apply our theme to enhance plots to be more readable for colourblind viewers
   #' @export
   #' @examples
   #'
   #' \dontrun{ggplot(mpg, aes(x = hwy, y = cty, fill = as.factor(cyl))) +geom_bar(stat = 'identity') + theme_deutera(colour_type = 'fill')}
   #'
   #' \dontrun{ggplot(mpg, aes(x = hwy, y = cty, colour = as.factor(cyl))) + geom_point(stat = 'identity')  +  theme_deutera(colour_type = 'colour')}
   #'
   #' \dontrun{ggplot(mpg, aes(hwy, colour = as.factor(cyl))) + geom_density() +  theme_deutera(colour_type = 'colour')}
   #'
   #' @return reformatted plot for deuteranopia vision

    tryCatch(colour_type,
             error = function(e){
                 message("An error occurred:\n", e)
             },
             warning = function(w){
                 message("A warning occured:\n", w)
             },
             finally = {
                 message("ColourblindR Applied")
             })


   theme_set(theme_base())

   cb_palette <- c('#666E95', '#FFC13D', '#2F86E5',
                  '#ACA6C3', '#483E3C','#E8C6BA',
                  '#867065', '#005186', '#B0860F',
                  '#FFD9B0')

   if (colour_type == 'fill'){
       scale_fill_manual(values = cb_palette)
   } else if (colour_type %in% c('colour', 'color')){
       scale_colour_manual(values = cb_palette)
   } else{
       stop('colour_type expects either fill, colour or color.
            For more information look at the documentation with ?theme_*.')
   }

}

