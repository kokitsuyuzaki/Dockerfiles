FROM snakemake/snakemake:v7.32.4

RUN pip install POT && \
    python -c "import snakemake; import sys; import numpy as np; import ot" && \
    singularity --version