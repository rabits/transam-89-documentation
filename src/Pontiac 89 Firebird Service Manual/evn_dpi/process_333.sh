for i in 333/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3412x2460+370+352 +repage -rotate 270 -colorspace gray -level 0%,50% $i ../release_evn/$newname
done
