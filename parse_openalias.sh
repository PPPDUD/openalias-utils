#!/bin/bash
result=$(grep -P 'oa1:'"$1"' .*?recipient_address=\K.*?;' -o)
echo ${result: : -1}
