.onLoad <- function(...) {
  themes <- getOption("themetoggle.themes")
  if (is.null(themes)) {
    options(themetoggle.themes = c("Monarch", "Crimson Editor"))
  }
}
