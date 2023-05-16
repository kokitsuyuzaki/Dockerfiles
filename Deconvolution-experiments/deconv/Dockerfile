# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_16

RUN R -e 'BiocManager::install(version = "3.16", ask=FALSE);   BiocManager::valid();   BiocManager::install(c("MAST", "TOAST", "DWLS"), ask=FALSE, force=TRUE);   devtools::install_github("cozygene/bisque");   devtools::install_github("rosedu1/deconvSeq");   devtools::install_github("xuranw/MuSiC");   devtools::install_github("renozao/xbioc");   devtools::install_github("meichendong/SCDC")'