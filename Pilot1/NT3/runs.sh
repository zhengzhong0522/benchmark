#!/bin/bash
#COBALT -n 2 -t 60 -O runs2 -qdebug-cache-quad -A EE-ECP

export PoLi_PREFIX="runs_"
export OMP_NUM_THREADS=64
module load datascience/tensorflow-1.13 datascience/horovod-0.16.3 datascience/keras-2.2.4
nnd=2
rpn=1
#aprun -n $((nnd*rpn)) -N $rpn --cc=depth -d 64 -j 1  /home/wuxf/Theta/python364/bin/python3 nt3_hybrid-opt.py
aprun -n $((nnd*rpn)) -N $rpn --cc=depth -d 64 -j 1  python3 nt3_hybrid-opt.py
