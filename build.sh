#!/bin/bash

# Run this script with no arguments for a full CV and the
# argument "short" for a short version

if [ "$1" = "short" ]
then
  cp CV.tex tmp.tex
  # Build twice so cross referencing is correct.
  xelatex "\newif\iflong \input{tmp.tex}"
  xelatex "\newif\iflong \input{tmp.tex}"
  mv tmp.pdf CV_short.pdf
  rm tmp.*
else
  # Build twice so cross referencing is correct.
  xelatex "\newif\iflong \longtrue \input{CV.tex}"
  xelatex "\newif\iflong \longtrue \input{CV.tex}"
  # Clean up the temp files
  rm CV.log CV.aux CV.out
fi
