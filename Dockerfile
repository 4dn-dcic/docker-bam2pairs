## source file for duplexa/bam2pairs:v1

FROM ubuntu:16.04
MAINTAINER Soo Lee (duplexa@gmail.com)

# 1. general updates & installing necessary Linux components
RUN apt-get update -y && apt-get install -y wget unzip less vim bzip2 make gcc zlib1g-dev libncurses-dev git

WORKDIR /usr/local/bin

# samtools-1.2
COPY samtools-1.2.tar.bz2 . 
RUN tar -xjf samtools-1.2.tar.bz2 && rm samtools-1.2.tar.bz2 && cd samtools-1.2 && make
ENV PATH=/usr/local/bin/samtools-1.2:$PATH

# pairix & bgzip
RUN git clone https://github.com/hms-dbmi/pairix && cd pairix && git checkout 8b2dd72d57301bba008fd25467128fea568a4eab && make ## the latest commit at the time of creating this Dockerfile.
ENV PATH=/usr/local/bin/pairix/bin/:$PATH

#bam2pairs (unknown yet)
## replace with a better tool here ##
RUN mkdir bam2pairs
COPY bam2pairs bam2pairs
RUN chmod +x bam2pairs/bam2pairs
ENV PATH=/usr/local/bin/bam2pairs/:$PATH

# wrapper
COPY run.sh .
RUN chmod +x run.sh

# default command
CMD ["run.sh"]

