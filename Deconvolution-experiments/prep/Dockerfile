# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_16

RUN R -e 'BiocManager::install(version = "3.16", ask=FALSE);   BiocManager::valid();   BiocManager::install(c("rhdf5", "readxl", "writexl"), ask=FALSE, force=TRUE)'
