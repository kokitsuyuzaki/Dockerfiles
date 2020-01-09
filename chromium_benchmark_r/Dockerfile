FROM conda/miniconda3:latest

LABEL maintainer="koki <k.t.the-answer@hotmail.co.jp>"

RUN conda update --all -y
RUN conda config --add channels r
RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda
RUN conda create -n r-3.6 -y
RUN source activate r-3.6
RUN conda install r-base=3.6.2 -y
RUN conda install r-ggplot2=3.2.1 -y
RUN conda install r-biocmanager=1.30.10 -y
RUN conda install r-seurat=3.1.2 -y
RUN conda install r-venndiagram=1.6.20 -y
RUN conda install bioconductor-tximport=1.14.0 -y
RUN conda install bioconductor-busparse=1.0.0 -y
RUN conda install bioconductor-fishpond=1.2.0 -y
RUN conda install bioconductor-dropletutils=1.6.1 -y
RUN conda install bioconductor-Homo.sapiens=1.3.1 -y
