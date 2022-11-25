# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM koki/bindsc:20220609

RUN R -e 'BiocManager::install(version = "3.15", ask=FALSE); BiocManager::valid(); BiocManager::install(c("mwTensor", "fields", "igraph", "scRNAseq", "HCAData", "ExperimentHub", "TENxPBMCData", "Homo.sapiens", "Mus.musculus", "Matrix", "celldex", "Seurat", "R.utils", "devtools", "scTGIF"), ask=FALSE); devtools::install_github("rikenbit/nnTensor"); devtools::install_github("kokitsuyuzaki/Machima")' \
    && pip install POT
