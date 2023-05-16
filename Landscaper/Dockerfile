FROM condaforge/mambaforge:23.1.0-1

RUN mamba install -c r -c conda-forge -c bioconda python=3.10 snakemake numpy scipy numba cython jupyter ipython multiprocess boost==1.74 matplotlib mpmath r-essentials r-base -y && \
    pip install coniii && \
    python -c "import coniii; import snakemake; import sys; import numpy as np; import numba; import cython; import jupyter; import multiprocess; import matplotlib; import mpmath" && \
    ipython -V && \
    R -e "install.packages('dcTensor', repos='https://cloud.r-project.org', type='source'); library('dcTensor')"