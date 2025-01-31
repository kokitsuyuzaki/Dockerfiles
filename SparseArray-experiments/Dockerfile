# Base Image
FROM bioconductor/bioconductor_docker:devel

RUN apt-get update && \
    apt-get install -y --no-install-recommends apt-utils time && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    ## Install Packages
    /usr/local/bin/R -e "BiocManager::install(version='devel', ask=FALSE); BiocManager::valid(); BiocManager::install(c('matter', 'SparseArray', 'DelayedRandomArray', 'HDF5Array', 'spray', 'ggplot2'), ask=FALSE, force=TRUE); remotes::install_github('rikenbit/DelayedTensor', force=TRUE, upgrade='always'); devtools::install_github('cran/assertive.base'); devtools::install_github('cran/assertive.properties'); devtools::install_github('cran/assertive.types'); devtools::install_github('cran/tensorr'); library('matter'); library('DelayedTensor'); library('SparseArray'); library('DelayedRandomArray'); library('spray'); library('tensorr'); library('ggplot2')"
