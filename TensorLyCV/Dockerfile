FROM snakemake/snakemake:v7.19.1

RUN pip install -U tensorly matplotlib seaborn && \
    python -c "import snakemake; import sys; import numpy as np; import pandas as pd; import tensorly.decomposition as tsd; import pickle as pkl; import matplotlib.pyplot as plt; import seaborn as sns; import math; import random as rd; import tensorly.cp_tensor as tsc" && \
    singularity --version