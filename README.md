
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rportr

<!-- badges: start -->

<!-- badges: end -->

The goal of rportr is to streamline the building of parameterized
reports, including setup, table generation, and handling complex project
directories.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("beaulucas/rportr")
```

## Examples

### Reading in data

This is a basic example which shows you how to solve a common problem:

Say you have a `./data` directory in your project, full of a mix of text
files and RDS files. How to read all of them at once and assign them
descriptive names?

Let’s create a directory to demonstrate it. youtube

``` r
dir.create("./data")
write.csv(mtcars, "./data/mtcars.csv")
saveRDS(iris, "./data/iris.rds", compress = FALSE)
```

The directory above takes the following structure:

``` r
-- data
---- mtcars.csv
---- iris.rds
```

Now we will use `read_directory` to read in the file and assign variable
names based on the file name.

``` r
library(rportr)
read_directory("./data")
#> File ./data/iris.rds assigned to variable: iris
#> Warning: Missing column names filled in: 'X1' [1]
#> Parsed with column specification:
#> cols(
#>   X1 = col_character(),
#>   mpg = col_double(),
#>   cyl = col_double(),
#>   disp = col_double(),
#>   hp = col_double(),
#>   drat = col_double(),
#>   wt = col_double(),
#>   qsec = col_double(),
#>   vs = col_double(),
#>   am = col_double(),
#>   gear = col_double(),
#>   carb = col_double()
#> )
#> File ./data/mtcars.csv assigned to variable: mtcars
```

### Setting up a project directory

### Formatting data for `kable`
