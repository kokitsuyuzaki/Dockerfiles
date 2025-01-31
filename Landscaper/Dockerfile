# Stage 1: Julia Environment
FROM julia:1.7.0-rc1-buster AS julia-stage

## Dependent Julia Packages
ENV JULIA_DEPOT_PATH="/julia_packages/"
RUN julia -e 'import Pkg; Pkg.add("GLM"); Pkg.add("SparseArrays"); Pkg.add("DataFrames"); Pkg.add("MatrixMarket")'

## Stage 2: R Environment
FROM bioconductor/bioconductor_docker:RELEASE_3_19 AS r-stage

## Shell type
SHELL ["/bin/bash", "-l", "-c"]

## Copy Julia Command
RUN mkdir /julia_bin
COPY --from=julia-stage /usr/local/julia /julia_bin/

## Copy Dependent Julia Packages
RUN mkdir /julia_packages
COPY --from=julia-stage /julia_packages/ /julia_packages/

## Julia Packages' Path
ENV JULIA_DEPOT_PATH="/julia_packages/"

## Check
RUN /julia_bin/bin/julia -e 'using GLM; using SparseArrays; using DataFrames; using MatrixMarket'

# Dependent Packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends xserver-xorg x11-apps && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install snakemake && \
    pip install pulp==2.6.0 && \
    R -e "BiocManager::install(version = '3.19', ask=FALSE); BiocManager::valid(); BiocManager::install(c('IsingSampler', 'igraph', 'tagcloud', 'tidyverse', 'RColorBrewer', 'akima', 'spatstat', 'magick', 'cowplot', 'dendextend', 'GGally', 'Rcpp', 'viridis', 'mclust', 'reshape', 'RcppArmadillo', 'snow', 'doParallel')); library('IsingSampler'); library('igraph'); library('tagcloud'); library('tidyverse'); library('RColorBrewer'); library('akima'); library('spatstat'); library('magick'); library('cowplot'); library('dendextend'); library('GGally'); library('Rcpp'); library('viridis'); library('mclust'); library('reshape'); library('RcppArmadillo'); library('snow'); library('doParallel')" && \
    python3 -c "import sys; import numpy as np" && \
    snakemake -v && \
    # From koki/rela
    git clone https://github.com/kecosz/rELA.git && \
	cd rELA && \
	R CMD INSTALL rELA.v0.51.tar.gz
