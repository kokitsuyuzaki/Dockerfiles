FROM continuumio/anaconda3:latest

RUN conda install -y -c conda-forge -c bioconda snakemake r-devtools r-tidyverse r-tagcloud r-spam && \
    R -e "devtools::install_github('rikenbit/nnTensor'); devtools::install_github('rikenbit/dcTensor'); library('nnTensor'); library('dcTensor'); library('tidyverse')" && \
    python -c "import sys; import numpy as np" && \
    snakemake -v
