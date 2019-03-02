trita_colour <- theme_trita('colour')
trita_fill <- theme_trita('fill')

test_that('theme_trita() Colour Tests', {
    expect_identical(trita_colour$palette(1), c("#5F727A", "#FFB7C2", "#01919A", "#A8A8B4",
                                                "#BDE6F4", "#4A3F45", "#B77B87", "#00585C",
                                                "#932929"))
    expect_identical(trita_fill$palette(1), c("#5F727A", "#FFB7C2", "#01919A", "#A8A8B4",
                                              "#BDE6F4", "#4A3F45", "#B77B87", "#00585C",
                                              "#932929"))
})
