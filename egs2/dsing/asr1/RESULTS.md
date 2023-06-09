<!-- Generated by scripts/utils/show_asr_result.sh -->
# RESULTS
## Environments
- date: `Sat Mar 19 23:02:37 EDT 2022`
- python version: `3.9.7 (default, Sep 16 2021, 13:09:58)  [GCC 7.5.0]`
- espnet version: `espnet 0.10.7a1`
- pytorch version: `pytorch 1.10.1`
- Git hash: `c1ed71c6899e54c0b3dad82687886b1183cd0885`
  - Commit date: `Wed Mar 16 23:34:49 2022 -0400`

## asr_train_asr_conformer7_hubert_ll60k_large_raw_bpe500_sp
- model:  https://huggingface.co/espnet/ftshijt_espnet2_asr_dsing_hubert_conformer
### WER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_latest/dev|482|4018|83.6|9.4|7.0|6.4|22.8|58.3|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_latest/test|480|4632|81.4|12.3|6.3|4.5|23.1|52.1|

### CER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_latest/dev|482|18692|88.5|3.1|8.4|5.9|17.4|58.3|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_latest/test|480|21787|87.9|4.3|7.8|4.5|16.6|52.1|

### TER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_latest/dev|482|6097|82.2|7.1|10.7|5.7|23.5|58.3|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_latest/test|480|7736|81.7|9.2|9.1|4.0|22.3|52.1|

## asr_train_asr_raw_bpe500_sp
- model: https://huggingface.co/espnet/ftshijt_espnet2_asr_dsing_transformer
### WER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_valid.acc.ave/dev|482|4018|77.0|16.2|6.8|4.0|27.0|65.1|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_valid.acc.ave/test|480|4632|76.1|17.3|6.6|3.7|27.6|57.7|

### CER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_valid.acc.ave/dev|482|18692|85.0|5.8|9.2|4.2|19.2|65.1|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_valid.acc.ave/test|480|21787|84.9|6.3|8.8|4.2|19.3|57.7|

### TER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_valid.acc.ave/dev|482|6097|75.2|12.8|12.0|4.1|28.9|65.1|
|decode_asr_lm_lm_train_lm_bpe500_valid.loss.ave_asr_model_valid.acc.ave/test|480|7736|75.3|14.3|10.4|4.1|28.8|57.7|
