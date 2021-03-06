PAD = "<pad>"
UNK = "<unk>"
# pad id can be automatically detected, so you don't need to modify it.
WORD_PAD_ID = 0
WORD_UNK_ID = 1
LABEL_PAD_ID = 0

# parameter
label_smoothing = 0.1

residual_dropout = 0.2
attention_dropout = 0.1
relu_dropout = 0.1

# train
epoch = 1000
# subprocesses to use for data loading. = cpu counts
num_workers = 16
batch_size = 256
# num_workers = 0
# batch_size = 128

# dimensions
# feature_dim * 2 = model_dim
feature_dim = 100
model_dim = 200
filter_dim = 800
# feature_dim = 16
# model_dim = 32
# filter_dim = 64

head_num = 8
layer_num = 10
# head_num = 4
# layer_num = 2

lr = 0.02
factor = 4
clipping = 2
warmup_step = 500
adam_beta1 = 0.9
adam_beta2 = 0.999
adam_epsilon = 1e-8

# output
plot_step = 5
plot_epoch = 10
