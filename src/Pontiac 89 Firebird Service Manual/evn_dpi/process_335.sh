for i in 335/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    if [ "335/1418.jpg" = "$i" ]; then
        right=342
    elif [ "335/1480.jpg" = "$i" ]; then
        right=342
    else
        right=312
    fi
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3422x2490+370+$right +repage -rotate 270 -colorspace gray -level 0%,50% $i ../release_evn/$newname
done
