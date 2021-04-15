# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM ubuntu

RUN apt-get update \
	&& apt-get install -y --no-install-recommends axel \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*