context("xkcd")

test_that("load xkcd jpg works", {
    expect_error(xkcd(50), NA)
})

test_that("load xkcd png works", {
    expect_error(xkcd(1250), NA)
})

test_that("load xkcd random works", {
    expect_error(xkcd(), NA)
})

test_that("error on non-numeric comics", {
    expect_error(xkcd("abc"))
})

test_that("error on nonexistent comics", {
    expect_error(xkcd(999999))
})

