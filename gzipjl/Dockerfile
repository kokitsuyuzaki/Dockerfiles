# This docker image has LaTeX to build the vignettes
# https://www.bioconductor.org/help/docker/
FROM julia:1.6.0-rc1-buster

RUN julia -e 'import Pkg; Pkg.add("GZip")'
