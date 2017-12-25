for i in 337/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3452x2480+360+182 +repage -rotate 90 -colorspace gray -level 0%,50% $i ../release_odd/$newname
done
