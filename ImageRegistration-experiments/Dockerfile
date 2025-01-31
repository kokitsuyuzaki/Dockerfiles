FROM continuumio/miniconda3:24.7.1-0

RUN apt-get update && \
    apt-get install -y --no-install-recommends imagemagick && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install matplotlib && \
    pip install Pillow && \
    pip install SimpleITK && \
    pip install SimpleITKUtilities && \
    pip install antspyx && \
    python -c "import matplotlib.pyplot as plt; from PIL import Image; import sys; import numpy as np; import SimpleITK; import SimpleITK.utilities; import ants" && \
    convert -version