FROM snakemake/snakemake:v8.10.0

RUN echo 'numpy==1.26.4' > constraints.txt && \
    pip install -c constraints.txt POT torchdecomp && \
    python -c "import snakemake; import sys; import numpy as np; import ot; import torch; import torchdecomp as td" && \
    singularity --version