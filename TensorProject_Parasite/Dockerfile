# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_13

RUN R -e 'BiocManager::install(version = "3.13", ask=FALSE); BiocManager::valid(); BiocManager::install(c("Rtsne", "edgeR", "einsum"), ask=FALSE); remotes::install_github("rikenbit/mwTensor")' && pip install numba && pip install umap-learn
