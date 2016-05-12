<!-- README.md is generated from README.Rmd. Please edit that file -->
itns
====

### Datasets for the book *Introduction to the New Statistics*

This R package contains datasets from psychology studies used in book [Introduction to the New Statistics](http://www.thenewstatistics.com) by Geoff Cumming and Robert Calin-Jageman, to be published by Routledge in August 2016.

The original source of the datasets is a series of Excel files (that will soon be) found on the *Introduction to the New Statistics* website. Those Excel files have been converted to R data frames and bundled together in the `itns` package. The datasets can be used to replicate analyses that appear in *Introduction to the New Statistics*, and to work through the book's end-of-chapter exercises. At present the `itns` package contains all datasets from the book except those used in the meta-analysis chapter. Those will be added at a later date.

The package is currently under development and not intended for use outside of the book's authors and the package developers.

Installation
============

`itns` is not currently on CRAN but you can install it from github using the `devtools` package:

``` r
# install.packages("devtools")
 devtools::install_github("gitrman/itns")
#> Downloading GitHub repo gitrman/itns@master
#> from URL https://api.github.com/repos/gitrman/itns/zipball/master
#> Installing itns
#> "C:/PROGRA~1/R/R-33~1.0/bin/x64/R" --no-site-file --no-environ --no-save  \
#>   --no-restore --quiet CMD INSTALL  \
#>   "C:/Users/Lappy-D/AppData/Local/Temp/RtmpAb1fQw/devtools3c643e9c5880/gitrman-itns-ff6da52"  \
#>   --library="D:/win-library" --install-tests
#> 
```

References
==========

Cumming, G., & Calin-Jageman, R. (2017). *Introduction to the New Statistics*. New York; Routledge.

www.thenewstatistics.com
