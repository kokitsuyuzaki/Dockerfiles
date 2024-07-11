# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM julia:1.7.0-rc1-buster

# Set JULIA_DEPOT_PATH
ENV JULIA_DEPOT_PATH="/usr/local/koki/julia/"

RUN julia -e 'import Pkg; Pkg.add("MatrixMarket")' && \
	julia -e 'import Pkg; Pkg.add("FileIO")'
