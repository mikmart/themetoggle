# themetoggle

The package exports one function that applies a new RStudio theme, cycling through a given vector of theme names. This function is also exposed as an RStudio addin, enabling you to bind a shortcut to call it.

## Installation

Install **themetoggle** with:

``` r
# install.packages("devtools")
devtools::install_github("mikmart/themetoggle")"
```

## Usage

Simply call the `toggle_theme()` function to change themes:

``` r
themetoggle::toggle_theme()
themetoggle::toggle_theme()
```

By default, the list of themes to cycle through comes from the option `"themetoggle.themes"`. A convenient way to set a custom set of themes is to set this option in your `.Rprofile` with e.g.:

``` r
options(themetoggle.themes = c("Solarized Light", "Solarized Dark"))
```
