library(apiwrapper)
context("template")

test_that("Template", { expect_equal(is.character(template(42,"math")), TRUE) })
