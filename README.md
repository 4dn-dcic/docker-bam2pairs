# Docker-bam2pairs

Bam to pairs conversion module for Hi-C data, based on samtools, bgzip and pairix.
* Input : any paired-end bam file
* Output : a chromosome-block-sorted and bgzipped pairs pairs file that contains all the mapped read pairs in the bam file, along with its index (.gz and .gz.px2)

## Building docker image
The corresponding docker image can be rebuilt as follows:
```
git clone https://github.com/4dn-dcic/docker-bam2pairs
cd docker-bam2pairs
. download.sh
docker build -t duplexa/bam2pairs:v1 .
docker push duplexa/bam2pairs:v1 # you need permission to do this. (we will change the docker hub account soon)
```

## Usage
Run the following in the container.
```
run.sh <input_bam> <output_prefix>
# input_bam : input bam file.
# output_prefix : prefix of the output bam file.
```
