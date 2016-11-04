# Docker-bam2pairs


Bam to pairs conversion module for Hi-C data, based on samtools, bgzip and pairix.
* Input : any paired-end bam file
* Output : a chromosome-block-sorted and bgzipped pairs pairs file that contains all the mapped read pairs in the bam file, along with its index (.bsorted.pairs.gz and .bsorted.pairs.gz.px2)

This repo contains the source files for a docker image stored in duplexa/bam2pairs:v1. (we will change the docker hub account soon)


## Cloning the repo
```
git clone https://github.com/4dn-dcic/docker-bam2pairs
cd docker-bam2pairs
```

## Resources tools
Major software tools used inside the docker container are downloaded by the script `downloads.sh`. This script also creates a symlink to a version-independent folder for each software tool. In order to build an updated docker image with a new version of the tools, ideally only `downloads.sh` should be modified, but not `Dockerfile`, unless the new tool requires a specific APT tool that need to be downloaded. 
The `downloads.sh` file also contains comment lines that specifies the name and version of individual software tools.


## Building docker image
You need docker daemon to rebuild the docker image. If you want to push it to a different docker repo, replace duplexa/bam2pairs:v1 with your desired docker repo name. You need permission to push to duplexa/bam2pairs:v1.
```
docker build -t duplexa/bam2pairs:v1 .
docker push duplexa/bam2pairs:v1
```

## Usage
Run the following in the container.
```
run.sh <input_bam> <output_prefix>
# input_bam : input bam file.
# output_prefix : prefix of the output pairs file.
```

