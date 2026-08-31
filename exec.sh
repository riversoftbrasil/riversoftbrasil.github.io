#!/bin/bash -x
# rm -fR public/ && hugo server --tlsAuto
rm -rf public resources/_gen ~/.cache/hugo_cache && hugo mod clean && hugo server --ignoreCache --disableFastRender --tlsAuto

