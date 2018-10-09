#!/bin/bash
source _env.sh
python train.py $DEST --save-dir $SAVE_DIR --arch fconv_giga --lr 0.1 --clip-norm 0.1 --dropout 0.1 --max-tokens $MAX_TOKEN > log_train 2>&1 & disown
