# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM perl:5

RUN cpan -i LWP::UserAgent \
	&& cpan -i LWP::Protocol::https