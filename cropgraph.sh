#!/bin/bash

inpattern=$1
outpattern=$1
convert $infile -crop +30+50 -crop -20-40 $outfile
