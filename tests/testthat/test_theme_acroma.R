require(testthat)
require(ggplot2)


deutera_colour <- theme_deutera('colour')
deutera_fill <- theme_deutera('fill')

test_that('theme_deutera() Colour Tests', {
    expect_identical(deutera_colour$palette(1), c()) # Need to add the colour palettes
    expect_identical(deutera_fill$palette(1), c()) # Need to add the colour palettes
})
