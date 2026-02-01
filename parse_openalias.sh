#!/bin/bash
grep -P 'oa1:'"$1"' .*?recipient_address=\K.*?(?=;)' -o
