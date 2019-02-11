
theme_toggler <- function() {
  i <- 0
  function(themes = getOption("themetoggle.themes")) {
    n <- length(themes)
    i <<- (i + 1) %% n
    theme <- themes[1 + i]
    rstudioapi::applyTheme(theme)
  }
}

#' Toggle RStudio themes
#'
#' Applies an RStudio them on invocation, cycling through given themes.
#'
#' @param themes a vector of theme names to toggle through
#' @export
toggle_theme <- theme_toggler()
