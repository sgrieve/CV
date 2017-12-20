#!/bin/bash

# Run this script with no arguments for a full CV and the
# argument "short" for a short version

if [ "$1" = "short" ]
then
  cp CV.tex tmp.tex
  xelatex "\newif\iflong \input{tmp.tex}"
  mv tmp.pdf CV_short.pdf
  rm tmp.*
else
  xelatex "\newif\iflong \longtrue \input{CV.tex}"
fi
