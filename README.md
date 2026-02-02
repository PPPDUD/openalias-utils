# openalias-utils
Utilities for handling OpenAlias aliases, written in Bash.

## parse_openalias
Parse TXT entries to fetch the OpenAlias address for a given cryptocurrency. The TXT entries must be provided using `stdin`.

### Examples
`dig -t TXT getmonero.org +short | ./parse-openalias.sh xmr` (fetch TXT entries for getmonero.org, get the Monero address)

`./parse-openalias btc < myfile` (read the file `myfile` and get a Bitcoin address from it; `myfile` must be in the format provided by `dig -t TXT example.com +short`)

## openresolve-sh
An unofficial stand-in replacement for [openresolve](https://github.com/lunar-sh/openresolve).

The error messsages don't always behave the same as openresolve's do, so you should check the exit status (`$?` on Bash) when using it in scripts.
