FROM snakemake/snakemake:v8.10.0

RUN pip install POT torchdecomp && \
    python -c "import snakemake; import sys; import numpy as np; import ot; import torch; import torchdecomp as td" && \
    singularity --version