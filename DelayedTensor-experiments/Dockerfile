# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:devel

RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
	time \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
	## Install Packages
	&& /usr/local/bin/R -e 'BiocManager::install(version = "devel", ask=FALSE); BiocManager::valid(); BiocManager::install(c("DelayedRandomArray", "HDF5Array", "rTensor", "ggplot2", "scales", "RColorBrewer", "viridis", "matter", "einsum"), ask=FALSE, force=TRUE); remotes::install_github("rikenbit/DelayedTensor", force=TRUE, upgrade="always"); library("DelayedRandomArray"); library("HDF5Array"); library("rTensor"); library("ggplot2"); library("scales"); library("RColorBrewer"); library("viridis");	library("matter"); library("einsum"); library("DelayedTensor")'
