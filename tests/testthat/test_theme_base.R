base <- theme_base()

test_that('theme_base() Text Parameters Tests', {
    expect_true(base$text$family == 'sans')
    expect_true(base$text$colour == 'black')
    expect_true(base$text$size == 16)
    expect_true(base$text$lineheight == 1)
    expect_false(base$text$size == 19)
    expect_false(base$text$hjust == 2.0)
})

test_that('theme_base() Title Parameters Tests', {
    expect_true(base$plot.title$family == 'sans')
    expect_true(base$plot.title$size == 22)
    expect_true(base$plot.title$colour == 'black')
    expect_false(base$plot.title$colour == 'red')
})

test_that('theme_base() Bakgrounds Parameters Tests', {
    expect_true(base$plot.background$colour == 'white')
    expect_true(base$plot.background$fill == 'white')
    expect_true(base$panel.background$colour == 'white')
    expect_true(base$panel.background$fill == 'white')
    expect_null(base$plot.background$linetype)
})

test_that('theme_base() Axis Parameters Tests', {
    expect_true(base$axis.title$size == 16)
    expect_true(base$axis.text$size == 12)
    expect_null(base$axis.text$face)
})

test_that('theme_base() Legend Parameters Tests', {
    expect_true(base$legend.title$family == 'sans')
    expect_true(base$legend.title$colour == 'black')
    expect_true(base$legend.text$family == 'sans')
    expect_true(base$legend.text$colour == 'black')
})
