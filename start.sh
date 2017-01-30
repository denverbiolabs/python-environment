#!/bin/bash
set -euo pipefail

# docker run -i -t -p 8888:8888 -v /Users/tynes/Desktop/sci-dev:/opt/code continuumio/anaconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter pandas numpy openpyxl -y --quiet && /opt/conda/bin/jupyter notebook --notebook-dir=/opt --ip='*' --port=8888 --no-browser"  

if [ "$#" -ne 1 ]; then
  echo "Usage $0 <path to preprocessed data files>"
  exit
fi

DATA_PATH=$1
VERSION="0.1"
IMAGE="plate-reader-analysis"

docker build -t $IMAGE:$VERSION .
docker run -it -p 8888:8888 -v $DATA_PATH:/app/data -v $(pwd)/Notebooks:/app/Notebooks $IMAGE:$VERSION
