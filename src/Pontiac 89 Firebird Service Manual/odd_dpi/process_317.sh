right=252
for i in 317/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    if [ "$i" = "317/1185.jpg" ]; then
        right=312
    fi
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3242x2300+460+$right +repage -rotate 90 -colorspace gray -level 0%,50% $i ../release_odd/$newname
done
