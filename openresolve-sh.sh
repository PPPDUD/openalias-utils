#!/bin/bash
ticker="xmr"
if [[ $2 = "-t" ]]; then
  ticker=$3
fi

result=$(dig -t TXT $1 +short)
if [ "$result" = "" ]; then
  echo "error: no TXT entries"
  exit 1
fi
grep -P 'oa1:'"$ticker"' .*?recipient_address=\K.*?(?=;)' -o <<< "$result" || (echo "error: no openalias records found for $ticker" && exit 1)
