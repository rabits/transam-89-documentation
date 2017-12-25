for i in 313/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3212x2290+490+312 +repage -rotate 270 -colorspace gray -level 0%,50% $i ../release_evn/$newname
done
