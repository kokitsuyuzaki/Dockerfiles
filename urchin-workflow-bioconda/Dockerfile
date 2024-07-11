FROM continuumio/miniconda3:latest

RUN conda install -y --override-channels -c conda-forge mamba \
	&& mamba install -y --override-channels -c bioconda fastqc trimmomatic star subread salmon