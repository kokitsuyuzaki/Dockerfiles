FROM bioconductor/bioconductor_docker:RELEASE_3_17

RUN apt-get update && \
    apt-get install -y --no-install-recommends xserver-xorg x11-apps && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install snakemake && \
    R -e "BiocManager::install(version = '3.17', ask=FALSE); BiocManager::valid(); BiocManager::install(c('IsingSampler', 'igraph', 'tagcloud', 'tidyverse', 'RColorBrewer', 'akima', 'spatstat', 'magick', 'cowplot', 'dendextend', 'GGally', 'Rcpp', 'viridis', 'mclust', 'patchwork')); library('IsingSampler'); library('igraph'); library('tagcloud'); library('tidyverse'); library('RColorBrewer'); library('akima'); library('spatstat'); library('magick'); library('cowplot'); library('dendextend'); library('GGally'); library('Rcpp'); library('viridis'); library('mclust'); library('patchwork')" && \
    python3 -c "import sys; import numpy as np" && \
    snakemake -v
