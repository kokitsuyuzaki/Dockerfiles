# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_17

RUN R -e 'BiocManager::install(version = "3.17", ask=FALSE); BiocManager::valid(); BiocManager::install(c("seqinr", "zoo", "DECIPHER", "einsum", "ROCR", "ggplot2", "ggbeeswarm"), ask=FALSE); library("seqinr"); library("zoo"); library("DECIPHER"); library("ROCR"); library("ggplot2"); library("ggbeeswarm")';
