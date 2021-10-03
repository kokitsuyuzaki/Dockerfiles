# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM rocker/r-devel:latest

RUN R -e 'install.packages(c("testthat", "mwTensor", "ttTensor", "gcTensor"), repos="http://cran.r-project.org")'