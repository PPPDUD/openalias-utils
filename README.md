# openalias-utils
Utilities for handling OpenAlias aliases, written in Bash.

## parse_openalias
Parse TXT entries to fetch the OpenAlias address for a given cryptocurrency. The TXT entries are read in from `stdin` to enable piping from `dig`.

Example: `dig -t TXT getmonero.org +short | ./parse-openalias.sh xmr` (fetch TXT entries for getmonero.org, get the Monero address)

## openresolve-sh
Stand-in replacement for [openresolve](https://github.com/lunar-sh/openresolve); uses `parse_openalias` for parsing.
