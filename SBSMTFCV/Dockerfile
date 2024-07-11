FROM continuumio/miniconda3:latest

RUN conda install -y --override-channels -c conda-forge -c bioconda snakemake r-devtools r-tidyverse r-tagcloud r-spam r-matrix && \
    R -e "devtools::install_github('rikenbit/nnTensor'); devtools::install_github('rikenbit/dcTensor'); library('nnTensor'); library('dcTensor'); library('tidyverse'); library('Matrix')" && \
    python -c "import sys; import numpy as np" && \
    snakemake -v
