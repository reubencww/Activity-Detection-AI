#!/usr/bin/env bash

export PATH=/home/rdai/anaconda3/envs/torch1.9/bin:$PATH

python ./Toyota_Smarthome/pipline/train.py \
-dataset TSU \
-mode rgb \
-split_setting CS \
-model PDAN \
-train ${3:-'False'} \
-num_channel 512 \
-lr 0.0002 \
-kernelsize 3 \
-APtype map \
-epoch ${4:-1} \
-batch_size ${5:-1} \
-comp_info TSU_CS_RGB_PDAN \
-data $1 \
-load_model ${2:-'False'} \
-save_model ${6:-'./'}

