FROM bioconductor/bioconductor_docker:RELEASE_3_15

RUN apt update && \
    apt-get install libboost-all-dev -y && \
    R -e 'BiocManager::install(version = "3.15", ask=FALSE); \
    BiocManager::valid(); \
    BiocManager::install(c("Seurat", "velociraptor", "pcaMethods", "R.utils", "scater", "scuttle", "scran", "scRNAseq", "metR"), \
        ask=FALSE, force=TRUE); \
    devtools::install_github("velocyto-team/velocyto.R"); \
    devtools::install_github("mojaveazure/loomR", ref = "develop"); \
    devtools::install_github("mojaveazure/seurat-disk"); \
    devtools::install_github("satijalab/seurat-wrappers")'
