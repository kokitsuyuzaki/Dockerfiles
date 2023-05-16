# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_17

RUN R -e 'BiocManager::install(version = "3.17", ask=FALSE); BiocManager::valid(); BiocManager::install(c("guidedPLS", "Rtsne", "edgeR", "DESeq2", "RColorBrewer", "ggplot2", "tagcloud", "reshape2", "patchwork", "GO.db"), ask=FALSE)'
