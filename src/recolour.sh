#!/bin/bash



for f in *.svg
do

sed "s/fill:#111111/fill:none;/g" < $f | sed "s/fill:#111;/fill:none;/g" | sed "s/fill:white/fill:#000000;/g" | sed "s/stroke:white/stroke:#000000;/g" | sed "s/fill:#ffffff/fill:#000000;/g" | sed "s/stroke:#ffffff/stroke:#000000;/g" > "$f"

rm $f

done
