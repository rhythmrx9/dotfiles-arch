#! /usr/bin/bash

mkdir -p nf

inotifywait -d nf -o watchfile.txt --timefmt  '%H:%M' --format '%T %w %e %f'  
