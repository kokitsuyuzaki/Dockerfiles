FROM continuumio/anaconda3:latest

RUN conda install -y -c conda-forge r-devtools r-fields r-tagcloud r-igraph r-ggplot2 r-patchwork r-reshape2 r-umap && \
    R -e "devtools::install_github('rikenbit/dcTensor'); library('dcTensor'); library('igraph'); library('ggplot2'); library('patchwork'); library('umap'); library('reshape2')" && \
    # Deepwalk Install
    pip install deepwalk && \
    cd /opt/conda/lib/python3.11/site-packages/deepwalk && \
    head -13 graph.py > tmp && \
    echo "from collections import defaultdict" >> tmp && \
    echo "from collections.abc import Iterable" >> tmp && \
    tail -306 graph.py >> tmp && \
    mv tmp graph.py && \
    echo "from collections import Counter" > tmp && \
    echo "from collections.abc import Mapping" >> tmp && \
    tail -29 skipgram.py >> tmp && \
    mv tmp skipgram.py && \
    sed -e "s|size=|vector_size=|g" __main__.py > tmp && \
    mv tmp __main__.py && \
    deepwalk -h