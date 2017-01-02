if (!require(testthat)) {
    install.packages("testthat")
}
library(testthat)
library(comics)

test_check("comics")
