FROM bioconductor/bioconductor_docker:RELEASE_3_19

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
