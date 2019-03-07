context("test-toggle_theme")

test_that("can find current theme", {
  with_mock(
    `rstudioapi::getThemeInfo` = function() {
      list(editor = "foo")
    },
    expect_equal(current_theme(), "foo")
  )
})

test_that("can find next theme", {
  themes <- c("foo", "bar", "baz")
  
  with_mock(
    current_theme = function() "foo",
    expect_equal(next_theme(themes), "bar")
  )
})

test_that("toggling applies next theme", {
  with_mock(
    next_theme = function(...) "baz",
    `rstudioapi::applyTheme` = function(x) x,
    expect_equal(toggle_theme(), "baz")
  )
})

test_that("themes loop around", {
  themes <- head(letters)
  
  with_mock(
    current_index = function(...) length(themes),
    expect_equal(next_index(themes), 1L)
  )
})

test_that("unknown theme swaps to first", {
  themes <- c("foo", "bar", "baz")
  
  with_mock(
    current_theme = function() "pop",
    expect_equal(next_index(themes), 1L)
  )
})

test_that("can set themes via options", {
  options(themetoggle.themes = c("foo", "bar"))

  with_mock(
    current_theme = function() "bar",
    expect_equal(current_index(), 2L)
  )
})
