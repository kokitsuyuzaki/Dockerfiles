FROM alexd13/omnideconv_benchmark:latest

ENV R_LIBS=/opt/R/4.4.0/lib/R/library

RUN apt-get update && \
    apt-get install pandoc -y && \
	echo "R=/usr/bin/R" > /root/.bashrc
