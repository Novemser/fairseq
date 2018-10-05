#!/bin/bash
#TEXT=/home/novemser/Documents/Code/Global-Encoding/data/less
#DEST=/home/novemser/Documents/Code/Global-Encoding/data/less/binary

TEXT=/home/novemser/Documents/Code/Global-Encoding/data
DEST=/home/novemser/Documents/Code/Global-Encoding/data/binary_fairseq

python preprocess.py --source-lang src --target-lang tgt \
  --trainpref $TEXT/train --validpref $TEXT/valid --testpref $TEXT/test \
  --destdir $DEST --padding-factor 1 --thresholdtgt 10 --thresholdsrc 10 --workers 16 > log_preprocess 2>&1 && python train.py $DEST --arch fconv_giga --lr 0.1 --clip-norm 0.1 --dropout 0.1 --max-tokens 4000 > log_train 2>&1 & disown
