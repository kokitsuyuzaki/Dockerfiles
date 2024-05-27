# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_17

RUN R -e 'BiocManager::install(version = "3.17"); BiocManager::valid(); BiocManager::install(c("nnTensor"), ask=FALSE); devtools::install_github("rikenbit/otTensor"); library("rTensor"); library("nnTensor"); library("otTensor")'



