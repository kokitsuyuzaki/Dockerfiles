FROM bioconductor/bioconductor_docker:RELEASE_3_19

RUN R -e "BiocManager::install(version='3.19'); BiocManager::valid(); BiocManager::install(c('Mus.musculus', 'tagcloud', 'viridis', 'ggplot2', 'fields'), ask=FALSE); library('Mus.musculus'); library('tagcloud'); library('viridis'); library('ggplot2'); library('fields')"
