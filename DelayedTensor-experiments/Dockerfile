# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:devel

RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
	libmysqlclient-dev \
	libgdal-dev \
	time \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
	## Install Packages
	&& R -e 'BiocManager::install(version = "devel", ask=FALSE); BiocManager::valid(); BiocManager::install(c("DelayedRandomArray","rTensor","ggplot2","scales","RColorBrewer","viridis","matter","einsum"), ask=FALSE); remotes::install_github("rikenbit/DelayedTensor", force=TRUE, dependencies=TRUE, upgrade="always")'




