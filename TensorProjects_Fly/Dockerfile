# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_17

RUN R -e 'BiocManager::install(version = "3.17", ask=FALSE); BiocManager::valid(); BiocManager::install(c("Rtsne", "ggplot2", "reshape2", "VennDiagram", "tagcloud", "readxl", "writexl", "qvalue", "edgeR", "DESeq2", "guidedPLS"), ask=FALSE, type="source")'
