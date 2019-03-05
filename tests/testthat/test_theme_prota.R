require(testthat)
require(ggplot2)


prota_colour <- theme_prota('colour')
prota_fill <- theme_prota('fill')

test_that('theme_prota() Colour Tests', {
    expect_identical(prota_colour$palette(1), c("#7D7C01", "#59709E", "#4C5631", "#3F59E8",
                                                "#BDBB64", "#35A9E0", "#E8E602", "#C1C1C7",
                                                "#0E1079"))
    expect_identical(prota_fill$palette(1), c("#7D7C01", "#59709E", "#4C5631", "#3F59E8",
                                              "#BDBB64", "#35A9E0", "#E8E602", "#C1C1C7",
                                              "#0E1079"))
})
