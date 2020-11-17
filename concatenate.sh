#!/usr/bin/env bash

#assuming you are in a directory with pdb trajectory files, this script finds all the pdb files, converts them to dcd files and adds a ".mdconvert.dcd" so you know that the files are now dcd files.

#run as sh concatenate.sh

for i in *pdb; do
        mdconvert -o $i.mdconvert.dcd $i
        echo "$i"
done
