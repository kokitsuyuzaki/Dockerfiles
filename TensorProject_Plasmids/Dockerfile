# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_13

RUN R -e 'BiocManager::install(version = "3.13", ask=FALSE); BiocManager::valid(); BiocManager::install(c("seqinr", "zoo", "tidyverse", "DECIPHER", "einsum", "Rtsne"), ask=FALSE); install.packages(c("mwTensor"), type="source", repos="http://cran.r-project.org")'
