<!-- README.md is generated from README.Rmd. Please edit that file -->
This package contains three datasets provided by the USA social security administration:

-   `babynames`: For each year from 1880 to 2013, the number of children of each sex given each name. All names with more than 5 uses are given. (Source: <http://www.ssa.gov/oact/babynames/limits.html>)

-   `applicants`: The number of applicants for social security numbers (SSN) for each year for each sex. (Source: <http://www.ssa.gov/oact/babynames/numberUSbirths.html>)

-   `lifetables`: Cohort life tables data (Source: <http://www.ssa.gov/oact/NOTES/as120/LifeTables_Body.html>)

It also includes the following data set from the US Census:

-   `births`: Number of live births by year. (Source: <http://www.census.gov/statab/hist/02HS0013.xls> and <http://www.cdc.gov/nchs/data/nvsr/nvsr62/nvsr62_09.pdf>)

Install it from github with:

``` r
devtools::install_github("hadley/babynames")
#> Downloading GitHub repo hadley/babynames@master
#> from URL https://api.github.com/repos/hadley/babynames/zipball/master
#> Installing babynames
#> "C:/PROGRA~1/R/R-33~1.0/bin/x64/R" --no-site-file --no-environ --no-save  \
#>   --no-restore --quiet CMD INSTALL  \
#>   "C:/Users/Lappy-D/AppData/Local/Temp/RtmpYHIbIV/devtools2ff0715b6135/hadley-babynames-c860580"  \
#>   --library="D:/win-library" --install-tests
#> 
```
