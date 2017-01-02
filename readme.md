Comics - an R package
================

[![Build Status](https://travis-ci.org/stillmatic/comics.svg?branch=master)](https://travis-ci.org/stillmatic/comics) [![codecov](https://codecov.io/gh/stillmatic/comics/branch/master/graph/badge.svg)](https://codecov.io/gh/stillmatic/comics)

Motivation
----------

I'm bored, and you deserve a break from data science.

XKCD
----

You can plot a random XKCD into your plots window:

``` r
xkcd()
```

    ## Pi Equals: My most famous drawing, and one of the first I did for the site

![](readme_files/figure-markdown_github/random_xkcd-1.png)

If you don't want the alt-text, I won't judge either:

``` r
xkcd(print_alt = FALSE)
```

![](readme_files/figure-markdown_github/random_xckd_noalt-1.png)

Or a specific one:

``` r
xkcd(88)
```

    ## Escher Bracelet: The only downside is that it would be a little uncomfortable

![](readme_files/figure-markdown_github/lucky_xkcd-1.png)
