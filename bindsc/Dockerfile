# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_15

RUN git clone https://github.com/KChen-lab/bindSC.git && R -e 'BiocManager::install(version = "3.15", ask=FALSE); BiocManager::valid(); BiocManager::install(c("umap", "irlba", "progress", "ggplot2", "Seurat", "DescTools", "ggpubr", "ComplexHeatmap", "reshape2", "ggrepel", "FNN", "reticulate", "rdist", "rliger", "splatter", "optparse", "fields"), ask=FALSE); system("R CMD INSTALL bindSC")'