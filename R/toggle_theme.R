
theme_toggler <- function(themes) {
  n <- length(themes)
  i <- 0
  function() {
    i <<- (i + 1) %% n
    theme <- themes[1 + i]
    rstudioapi::applyTheme(theme)
  }
}

toggle_theme <- theme_toggler(
  getOption("themetoggle.themes", default = c("Monarch", "Crimson Editor"))
)
