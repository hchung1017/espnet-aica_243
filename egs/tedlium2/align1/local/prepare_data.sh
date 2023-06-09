#!/usr/bin/env bash
#
# Copyright  2014  Nickolay V. Shmyrev
#            2014  Brno University of Technology (Author: Karel Vesely)
#            2016  Johns Hopkins University (Author: Daniel Povey)
# Apache 2.0

# To be run from one directory above this script.

. ./path.sh

export LC_ALL=C

sph2pipe=$KALDI_ROOT/tools/sph2pipe_v2.5/sph2pipe

# Prepare: test, train,
for set in dev test; do
  dir=data/$set
  mkdir -p $dir

  # Merge transcripts into a single 'stm' file, do some mappings:
  # - <F0_M> -> <o,f0,male> : map dev stm labels to be coherent with train + test,
  # - <F0_F> -> <o,f0,female> : --||--
  # - (2) -> null : remove pronunciation variants in transcripts, keep in dictionary
  # - <sil> -> null : remove marked <sil>, it is modelled implicitly (in kaldi)
  # - (...) -> null : remove utterance names from end-lines of train
  # - it 's -> it's : merge words that contain apostrophe (if compound in dictionary, local/join_suffix.py)
  { # Add STM header, so sclite can prepare the '.lur' file
    echo ';;
;; LABEL "o" "Overall" "Overall results"
;; LABEL "f0" "f0" "Wideband channel"
;; LABEL "f2" "f2" "Telephone channel"
;; LABEL "male" "Male" "Male Talkers"
;; LABEL "female" "Female" "Female Talkers"
;;'
    # Process the STMs
    cat db/TEDLIUM_release2/$set/stm/*.stm | sort -k1,1 -k2,2 -k4,4n | \
      sed -e 's:<F0_M>:<o,f0,male>:' \
          -e 's:<F0_F>:<o,f0,female>:' \
          -e 's:([0-9])::g' \
          -e 's:<sil>::g' \
          -e 's:([^ ]*)$::' | \
      awk '{ $2 = "A"; print $0; }'
  } | local/join_suffix.py > data/$set/stm

  cat $dir/stm | grep -v -e 'ignore_time_segment_in_scoring' -e ';;' | awk '
    {
      if($1==k)
        printf("%s"," ")
      else {
        if(NR!=1)
          print ""
        printf("%s\t",$1)
      }
      for(i=7;i<NF;i++)
        printf("%s ",$i)
      printf("%s",$NF)
      k=$1
    }
    END{
    print ""
    }' | tr '{}' '[]' | sort -k1,1 > $dir/text || exit 1


  # Prepare 'text' file
  # - {NOISE} -> [NOISE] : map the tags to match symbols in dictionary
  cat $dir/stm | grep -v -e 'ignore_time_segment_in_scoring' -e ';;' | \
    awk '{ printf ("%s-%07d-%07d", $1, $4*100, $5*100);
           for (i=7;i<=NF;i++) { printf(" %s", $i); }
           printf("\n");
         }' | tr '{}' '[]' | sort -k1,1 > $dir/utt_text || exit 1

  # Prepare 'segments', 'utt2spk', 'spk2utt'
  cat $dir/utt_text | cut -d" " -f 1 | awk -F"-" '{printf("%s %s %07.2f %07.2f\n", $0, $1, $2/100.0, $3/100.0)}' > $dir/label_segments
  cat $dir/label_segments | awk '{print $1, $2}' > $dir/label_utt2spk
  cat $dir/label_utt2spk | utils/utt2spk_to_spk2utt.pl > $dir/label_spk2utt

  # Prepare 'wav.scp'
  cat $dir/label_spk2utt | awk -v set=$set -v pwd=$PWD '{ printf("%s '$sph2pipe' -f wav -p %s/db/TEDLIUM_release2/%s/sph/%s.sph |\n", $1, pwd, set, $1); }' > $dir/wav.scp
  cat $dir/wav.scp | awk '{print $1, $1}' > $dir/utt2spk
  cat $dir/wav.scp | awk '{print $1, $1}' > $dir/spk2utt


  # Check that data dirs are okay!
  utils/validate_data_dir.sh --no-feats --no-text $dir || exit 1
done
