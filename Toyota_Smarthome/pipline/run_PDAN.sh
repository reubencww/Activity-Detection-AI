#!/usr/bin/env bash

export PATH=/home/rdai/anaconda3/envs/torch1.9/bin:$PATH

python ./Toyota_Smarthome/pipline/train.py \
-dataset TSU \
-mode rgb \
-split_setting CS \
-model ./trained_model/$1 \
-train True \
-num_channel 512 \
-lr 0.0002 \
-kernelsize 3 \
-APtype map \
-epoch $3 \
-batch_size $4 \
-comp_info TSU_CS_RGB_PDAN \
-data $2 \

