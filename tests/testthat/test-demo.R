library(escir)
context("Demo function tests")

test_that("Firset test group", {
  expect_equal(demo_fun(10, 20), 30)
  expect_equal(demo_fun(1, 2), 3)
})


test_that("Second dem group", {
  expect_equal(demo_fun(10, 20), 30)
  expect_equal(demo_fun(1, 2), 3)
})
