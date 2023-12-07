
<!-- README.md is generated from README.Rmd. Please edit that file -->

# namecount

<!-- badges: start -->
<!-- badges: end -->

The **namecount** package contains 5 functions:**getNamesCount**,
**getNamesStart**, **getNamesUnique**, **countStart**, and
**countNamesUnique**. These functions can be used to count the number of
names in a specified column or retrieve names from a specified
column.The goal of the **getNamesCount** package is to provide a quick
and easy way to filter your to better understand your data set without
having to write out a long function yourself.

## Installation

You can install the development version of namecount from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/namecount")
```

## getNamesCount - Example 1

This is a basic example of the `getNamesCount` function from the
**namecount** package using a basic data set:

``` r
# calling the 'namecount' package
library(namecount)
# basic sample data frame containing numeric and categorical columns 
dfSample <- data.frame(
fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
numFruit = c(17, 90, 35, 49, 102))
# using the 'getNamesCount' function 
answer1.0 <- getNamesCount(dfSample, fruit, numFruit, 50)

print(answer1.0)
#> [1] 3
```

## getNamesCount - Example 2

Looking at the summary statistics from the **penguins** data set from
the *palmerpenguins* package you can see that the mean bill length
collected in the data is 43.92mm.

``` r
sumP <- summary(palmerpenguins::penguins)

print(sumP)
#>       species          island    bill_length_mm  bill_depth_mm  
#>  Adelie   :152   Biscoe   :168   Min.   :32.10   Min.   :13.10  
#>  Chinstrap: 68   Dream    :124   1st Qu.:39.23   1st Qu.:15.60  
#>  Gentoo   :124   Torgersen: 52   Median :44.45   Median :17.30  
#>                                  Mean   :43.92   Mean   :17.15  
#>                                  3rd Qu.:48.50   3rd Qu.:18.70  
#>                                  Max.   :59.60   Max.   :21.50  
#>                                  NA's   :2       NA's   :2      
#>  flipper_length_mm  body_mass_g       sex           year     
#>  Min.   :172.0     Min.   :2700   female:165   Min.   :2007  
#>  1st Qu.:190.0     1st Qu.:3550   male  :168   1st Qu.:2007  
#>  Median :197.0     Median :4050   NA's  : 11   Median :2008  
#>  Mean   :200.9     Mean   :4202                Mean   :2008  
#>  3rd Qu.:213.0     3rd Qu.:4750                3rd Qu.:2009  
#>  Max.   :231.0     Max.   :6300                Max.   :2009  
#>  NA's   :2         NA's   :2
```

Now I would like to know how many observations there are in the data set
for species of penguins with a bill length below the mean collected.
This is where I would use the **namecount** function:

``` r
library(namecount)

answer2.0 <- getNamesCount(palmerpenguins::penguins, species, bill_length_mm, 43.92)

print(answer2.0)
#> [1] 167
```

The **getNamesCount** function produced a number, this number is the
total species observations that have a corresponding bill length
measurement below the *numericalValue* that was set at the mean
(43.92mm)

### Conclusion

If you would like to see more examples of usage for the **namecount**
package please refer to the package vignette or function help pages.

## References

The source of the **penguins** data set from the `palmerpenguins` R
package used here:

Horst AM, Hill AP, Gorman KB (2020). palmerpenguins: Palmer Archipelago
(Antarctica) penguin data. <doi:10.5281/zenodo.3960218>, R package
version 0.1.0, <https://allisonhorst.github.io/palmerpenguins/>.
