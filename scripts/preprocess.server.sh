#!/bin/bash
ROOTPATH=~/project/srl
TRAIN=~/project/conll-2012/train
DEV=~/project/conll-2012/dev
TEST=~/project/conll-2012/test

#python $ROOTPATH/src/preprocess/process_conll2012.py --trial 2 --subword --lowcase $TRAIN $ROOTPATH/data/train
#python $ROOTPATH/src/preprocess/process_conll2012.py --trial 2 --subword --lowcase $DEV $ROOTPATH/data/dev
#python $ROOTPATH/src/preprocess/process_conll2012.py --trial 2 --subword --lowcase --test $TEST $ROOTPATH/data/test

python $ROOTPATH/src/preprocess/process_conll2012.py --subword --lowcase $TRAIN $ROOTPATH/data/train
python $ROOTPATH/src/preprocess/process_conll2012.py --subword --lowcase $DEV $ROOTPATH/data/dev
python $ROOTPATH/src/preprocess/process_conll2012.py --subword --lowcase --test $TEST $ROOTPATH/data/test

python $ROOTPATH/src/preprocess/buildvocab.py --special "<pad>:<unk>" --limit 5 $ROOTPATH/data/train/word.txt $ROOTPATH/data/train/word_vocab.txt
python $ROOTPATH/src/preprocess/buildvocab.py --special "<pad>:<unk>" --limit 5 $ROOTPATH/data/dev/word.txt $ROOTPATH/data/dev/word_vocab.txt
python $ROOTPATH/src/preprocess/buildvocab.py --special "<pad>:<unk>" --limit 5 $ROOTPATH/data/test/word.txt $ROOTPATH/data/test/word_vocab.txt

python $ROOTPATH/src/preprocess/buildvocab.py --special "<pad>" $ROOTPATH/data/train/label.txt $ROOTPATH/data/train/label_vocab.txt
python $ROOTPATH/src/preprocess/buildvocab.py --special "<pad>" $ROOTPATH/data/dev/label.txt $ROOTPATH/data/dev/label_vocab.txt
python $ROOTPATH/src/preprocess/buildvocab.py --special "<pad>" $ROOTPATH/data/test/label.txt $ROOTPATH/data/test/label_vocab.txt
