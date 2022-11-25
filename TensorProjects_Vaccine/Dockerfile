# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_16

RUN R -e 'BiocManager::install(version = "3.16", ask=FALSE); BiocManager::valid(); install.packages(c("ggplot2", "viridis", "tidyverse", "abind", "reticulate", "einsum"), repos="https://cran.r-project.org", type="source"); devtools::install_github("rikenbit/nnTensor", force=TRUE)'
