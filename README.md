<!-- README.md is generated from README.Rmd. Please edit that file -->
itns
====

### Datasets for the book *Introduction to the New Statistics*

[![Travis-CI Build Status](https://travis-ci.org/gitrman/itns.svg?branch=master)](https://travis-ci.org/gitrman/itns)

This R package contains datasets from psychology studies used in book [Introduction to the New Statistics](http://www.thenewstatistics.com) by Geoff Cumming and Robert Calin-Jageman, to be published by Routledge in late 2016. It also contains a function to compute Cohen's d effect size and a confidence interval for paired samples.

The original source of the datasets is a series of Excel files (that will soon be) found on the *Introduction to the New Statistics* website. Those Excel files have been converted to R data frames and bundled together in the `itns` package. The datasets can be used to replicate analyses that appear in *Introduction to the New Statistics*, and to work through the book's end-of-chapter exercises.

Installation
============

`itns` is not currently on CRAN, but you can install it from github using the `devtools` package:

``` r
 library(devtools)
 install_github("gitrman/itns")
```

Documentation
=============

You can read the tutorial [Getting Started with the New Statistics in R](../blob/master/workbook/itns_r_into_for_website.pdf), which provides an overview of the `itns` package, as well as other R packages and functions that can be used to conduct the analyses covered in *Introdudction to the New Statistics*.

You can also [download a PDF version of the package manual](../blob/master/workbook/itns-manual.pdf).

References
==========

Cumming, G., & Calin-Jageman, R. (2017). *Introduction to the New Statistics*. New York; Routledge.

www.thenewstatistics.com
