#' Toggle RStudio themes
#'
#' Applies an RStudio them on invocation, cycling through given themes.
#'
#' @param themes a vector of theme names to toggle through
#' @export
toggle_theme <- function(themes = getOption("themetoggle.themes")) {
  rstudioapi::applyTheme(next_theme(themes))
}

next_theme <- function(themes = getOption("themetoggle.themes")) {
  themes[next_index(themes)]
}

next_index <- function(themes = getOption("themetoggle.themes")) {
  1L + current_index(themes) %% length(themes)
}

current_index <- function(themes = getOption("themetoggle.themes")) {
  match(current_theme(), themes, nomatch = 0L)
}

current_theme <- function() {
  rstudioapi::getThemeInfo()$editor
}
