# themetoggle

**themetoggle** exports one function, `toggle_theme()`, that applies a new RStudio theme, cycling through a given vector of theme names. This function is also exposed as an RStudio addin, enabling you to bind a shortcut to call it.

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

![toggling themes](https://raw.githubusercontent.com/mikmart/themetoggle/master/inst/media/toggling-themes.gif)

By default, `toggle_theme()` cycles between Textmate (the default, light theme) and Monokai (a dark theme). A convenient way to set a custom set of themes is to set the `"themetoggle.themes"` option in your `.Rprofile` with e.g.:

``` r
options(themetoggle.themes = c("Solarized Light", "Solarized Dark"))
```
