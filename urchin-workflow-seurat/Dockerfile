FROM bioconductor/bioconductor_docker:RELEASE_3_16

RUN R -e 'BiocManager::install(version = "3.16"); \
    BiocManager::valid(); \
    BiocManager::install(c("multtest", "metap", "readxl", "writexl", "R.utils", \
    "velociraptor", "pcaMethods", "DelayedArray", \
    "DelayedMatrixStats", "limma", "lme4", "S4Vectors", \
    "SingleCellExperiment", "SummarizedExperiment", "batchelor", \
    "Matrix", "HDF5Array", "terra", "ggrastr", "Seurat", "GO.db", "scDblFinder", "grr", "speedglm", "qvalue"), \
    ask=FALSE, force=TRUE); \
    devtools::install_github("rikenbit/scTGIF"); \
    tf <- tempfile(); \
    download.file("https://cran.r-project.org/src/contrib/Archive/Matrix.utils/Matrix.utils_0.9.8.tar.gz", tf); \
    install.packages(tf, type="source", repos=NULL); \
    devtools::install_github("cole-trapnell-lab/monocle3", force=TRUE); \
    devtools::install_github("satijalab/seurat-wrappers")'
