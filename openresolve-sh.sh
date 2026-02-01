#!/bin/bash
TICKER="xmr"
if [[ $2 = "-t" ]]; then
  TICKER=$3
fi

dig -t TXT $1 +short | grep -P '(?<=oa1:'"$TICKER"' recipient_address=)(\w+)' -o || (echo "error: no openalias records found for $TICKER" && exit 1)
