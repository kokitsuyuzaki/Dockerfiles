# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_15

RUN R -e 'BiocManager::install(version = "3.15", ask=FALSE); BiocManager::valid(); BiocManager::install(c("CCA", "geigen", "irlba", "Rtsne", "edgeR", "DESeq2", "einsum", "ROCR", "tagcloud", "reshape2", "patchwork", "GO.db"), ask=FALSE); remotes::install_github("rikenbit/mwTensor")' && pip install numba && pip install umap-learn
