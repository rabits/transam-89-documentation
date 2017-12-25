right=202
for i in 321/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    if [ "321/0884.jpg" = "$i" ]; then
        right=282
    fi
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3252x2360+440+$right +repage -rotate 270 -colorspace gray -level 0%,50% $i ../release_evn/$newname
done
