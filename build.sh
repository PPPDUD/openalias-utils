#!/bin/bash
chmod +x openresolve-sh.sh parse-openalias.sh
fpm \
  -s dir -t deb \
  -p openalias-utils.deb \
  --name openalias-utils \
  --license MIT \
  --version 0.1.0 \
  --architecture all \
  --description "Miscellaneous utilities for parsing OpenAlias entries in DNS records." \
  --url "https://github.com/PPPDUD/openalias-utils" \
  --maintainer "PPPDUD <mojavesoft@gmail.com>" \
  openresolve-sh.sh=/usr/bin/openresolve-sh \
  parse-openalias.sh=/usr/bin/parse-openalias
