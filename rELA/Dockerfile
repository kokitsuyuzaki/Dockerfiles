# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM bioconductor/bioconductor_docker:RELEASE_3_19

RUN git clone https://github.com/kecosz/rELA.git \
	&& cd rELA \
	&& R -e "BiocManager::install(version='3.19'); BiocManager::valid(); BiocManager::install(c('RcppArmadillo', 'doParallel', 'tidyverse', 'gsubfn', 'zoo', 'snow', 'plyr', 'gtools', 'ggsci', 'igraph', 'tidygraph', 'RColorBrewer', 'stringdist', 'dplyr', 'data.table', 'IsingSampler'), ask=FALSE)" \
	&& R CMD INSTALL rELA.v0.51.tar.gz

