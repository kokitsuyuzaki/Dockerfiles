FROM continuumio/anaconda3:latest

RUN conda install -y -c conda-forge -c bioconda snakemake r-devtools r-tidyverse r-nntensor && \
    R -e "devtools::install_github('rikenbit/dcTensor'); library('dcTensor'); library('tidyverse')" && \
    python -c "import sys; import numpy as np" && \
    snakemake -v
