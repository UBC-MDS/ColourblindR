deutera_colour <- theme_deutera('colour')
deutera_fill <- theme_deutera('fill')

test_that('theme_deutera() Colour Tests', {
    expect_identical(deutera_colour$palette(1), c("#666E95", "#FFC13D", "#2F86E5", "#ACA6C3",
                                                  "#483E3C", "#E8C6BA", "#867065", "#005186",
                                                  "#B0860F", "#FFD9B0"))
    expect_identical(deutera_fill$palette(1), c("#666E95", "#FFC13D", "#2F86E5", "#ACA6C3",
                                                "#483E3C", "#E8C6BA", "#867065", "#005186",
                                                "#B0860F", "#FFD9B0"))
})
