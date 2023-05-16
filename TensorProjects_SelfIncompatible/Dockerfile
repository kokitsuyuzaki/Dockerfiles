# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_16

RUN R -e 'BiocManager::install(version = "3.16", ask=FALSE); BiocManager::valid(); BiocManager::install(c("Biostrings", "rTensor", "einsum", "geigen", "randomForest", "caret"), ask=FALSE); remotes::install_github("rikenbit/mwTensor")'
