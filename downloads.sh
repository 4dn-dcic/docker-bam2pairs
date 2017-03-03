#!/bin/sh

## SOFTWARE: samtools
## VERSION: 1.2
wget https://github.com/samtools/samtools/releases/download/1.2/samtools-1.2.tar.bz2
tar -xjf samtools-1.2.tar.bz2
cd samtools-1.2
make
cd ..
ln -s samtools-1.2 samtools


## SOFTWARE: pairix
## VERSION: 0.1.0
wget https://github.com/4dn-dcic/pairix/archive/0.1.0.tar.gz
tar -xzf 0.1.0.tar.gz
cd pairix-0.1.0
make
cd ..
ln -s pairix-0.1.0 pairix


## SOFTWARE: bam2pairs
## VERSION: 0.0.2
wget https://github.com/4dn-dcic/bam2pairs/archive/0.0.2.tar.gz
tar -xzf 0.0.2.tar.gz
ln -s bam2pairs-0.0.2 bam2pairs

