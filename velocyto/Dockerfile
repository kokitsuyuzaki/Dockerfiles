FROM continuumio/miniconda3:22.11.1

RUN apt update && \
    apt install build-essential -y && \
    conda update conda -y && \
    conda install -c conda-forge -c bioconda numpy scipy cython numba matplotlib scikit-learn h5py click samtools -y && \
    pip install -U pandas anndata loompy scanpy python-igraph leidenalg velocyto scvelo