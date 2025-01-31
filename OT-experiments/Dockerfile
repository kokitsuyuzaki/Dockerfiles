FROM snakemake/snakemake:v7.32.4

RUN pip install POT==0.9.4 scikit-learn networkx igraph && \
    python -c "import snakemake; import sys; import numpy as np; import ot; import sklearn; import networkx; import igraph" && \
    singularity --version