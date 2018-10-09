#!/bin/bash
source _env.sh
python preprocess.py --source-lang src --target-lang tgt \
  --trainpref $TEXT/train --validpref $TEXT/valid --testpref $TEXT/test \
  --destdir $DEST --workers 16 > log_preprocess 2>&1 &
