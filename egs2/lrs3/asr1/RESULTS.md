<!-- Generated by scripts/utils/show_asr_result.sh -->
# RESULTS
## Environments
- date: `Mon Mar  7 16:57:48 EST 2022`
- python version: `3.8.12 (default, Oct 12 2021, 13:49:34)  [GCC 7.5.0]`
- espnet version: `espnet 0.10.7a1`
- pytorch version: `pytorch 1.10.1`
- Git hash: `ce48b589cd2d04b00a867a24352fc8d45fc6afc9`
  - Commit date: `Mon Mar 7 09:20:56 2022 -0500`

## asr_train_asr_transformer_no_lm
### WER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|inference_asr_model_valid.acc.ave/dev|2686|30060|81.8|15.2|3.0|4.0|22.2|75.3|
|inference_asr_model_valid.acc.ave/test|1321|9890|90.0|8.9|1.1|1.9|11.9|46.6|

### CER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|inference_asr_model_valid.acc.ave/dev|2686|155720|91.2|4.5|4.3|4.0|12.8|75.3|
|inference_asr_model_valid.acc.ave/test|1321|49750|95.2|2.7|2.1|1.7|6.5|46.6|

### TER

|dataset|Snt|Wrd|Corr|Sub|Del|Ins|Err|S.Err|
|---|---|---|---|---|---|---|---|---|
|inference_asr_model_valid.acc.ave/dev|2686|36737|77.1|13.2|9.7|2.9|25.8|75.3|
|inference_asr_model_valid.acc.ave/test|1321|11831|86.5|8.0|5.5|1.3|14.7|46.6|
