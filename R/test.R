#packages required for testing theme application in ColourblindR

library(ggplot2)
library(testthat)

# Test if theme is being applied

test_plot<- ggplot(diamonds, aes(x = depth, y = price, colour = cut)) +
    geom_point(alpha = 0.5) + theme_deutera()

# access to the layers and elements within the plot

test_build <- ggplot_build(test_plot)

# Testcase - to scan the elements witin the plot to make sure the plot complied with our theme
# test font size,colour and design

test_that('Theme is correct',
          expect_true(test_plot$theme$panel.background$fill == 'white'),
          expect_true(test_plot$theme$panel.background$colour == 'lightgrey'),
          expect_true(test_plot$theme$plot.title$size == 20),
          expect_true(test_plot$theme$axis.text$size == 13),
          expect_true(test_plot$theme$axis.title$size ==  16),
          expect_true(test_plot$theme$panel.grid.minor == element_blank()),
          expect_false(test_plot$theme$panel.grid.major== element_blank()),
          expect_false(test_plot$theme$legend.position == 'top'),
          expect_true(length(unique(test_build$data[[1]]$colour)) == 5))
