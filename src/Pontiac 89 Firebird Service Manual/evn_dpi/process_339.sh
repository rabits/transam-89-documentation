for i in 339/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    if [ "339/1596.jpg" = "$i" ]; then
        right=282
    elif [ "339/1606.jpg" = "$i" ]; then
        right=282
    else
        right=252
    fi
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3462x2490+360+$right +repage -rotate 270 -colorspace gray -level 0%,50% $i ../release_evn/$newname
done
