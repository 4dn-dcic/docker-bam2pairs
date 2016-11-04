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
## COMMIT: 8b2dd72d57301bba008fd25467128fea568a4ea
git clone https://github.com/hms-dbmi/pairix 
cd pairix
git checkout 8b2dd72d57301bba008fd25467128fea568a4eab
make
cd ..


## SOFTWARE: bam2pairs
## COMMIT: 70eb8fe7ebe6c7d837d47206745a93a91e09fb39
git clone https://github.com/4dn-dcic/bam2pairs
cd bam2pairs
git checkout 70eb8fe7ebe6c7d837d47206745a93a91e09fb39
cd ..

