#!/bin/bash
file='texte_long.tex' 
while inotifywait --event modify "$file"; do
    context --batchmode "$file"
done
