context("xkcd")

test_that("load xkcd jpg works", {
    expect_error(xkcd(50), NA)
})

test_that("load xkcd png works", {
    expect_error(xkcd(1250), NA)
})
