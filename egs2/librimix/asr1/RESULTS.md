<!-- Generated by scripts/utils/show_asr_result.sh -->
# Transformer multispkr
## Environments
- date: `Thu Nov 10 14:58:09 EST 2022`
- python version: `3.9.13 (main, Aug 25 2022, 23:26:10)  [GCC 11.2.0]`
- espnet version: `espnet 202209`
- pytorch version: `pytorch 1.12.1`
- Git hash: `28695114f2771ac3d2a9cc0b5fb30a2c3262e49a`
  - Commit date: `Wed Nov 9 22:00:30 2022 -0500`
- ASR config: [conf/tuning/train_asr_transformer_multispkr.yaml](conf/tuning/train_asr_transformer_multispkr.yaml)
- Decode config: [conf/decode.yaml](conf/decode.yaml)
- Pretrained model: [https://huggingface.co/espnet/simpleoier_librimix_asr_train_asr_transformer_multispkr_raw_en_char_sp](https://huggingface.co/espnet/simpleoier_librimix_asr_train_asr_transformer_multispkr_raw_en_char_sp)

## asr_train_asr_transformer_multispkr_raw_en_char_sp
### WER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_multi_asrtrue_lm_lm_train_lm_transformer_en_char_valid.loss.ave_asr_model_valid.acc.ave/dev|6000|123853|80.1|17.9|1.9|3.8|23.7|89.6|
|decode_multi_asrtrue_lm_lm_train_lm_transformer_en_char_valid.loss.ave_asr_model_valid.acc.ave/test|6000|111243|80.4|17.4|2.2|3.8|23.5|88.0|

### CER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|decode_multi_asrtrue_lm_lm_train_lm_transformer_en_char_valid.loss.ave_asr_model_valid.acc.ave/dev|6000|655222|90.5|6.3|3.2|4.1|13.6|89.6|
|decode_multi_asrtrue_lm_lm_train_lm_transformer_en_char_valid.loss.ave_asr_model_valid.acc.ave/test|6000|590408|90.5|6.1|3.5|3.9|13.5|88.0|
