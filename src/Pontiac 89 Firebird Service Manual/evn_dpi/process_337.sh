for i in 337/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    if [ "337/1534.jpg" = "$i" ]; then
        right=332
    elif [ "337/1530.jpg" = "$i" ]; then
        right=332
    elif [ "337/1572.jpg" = "$i" ]; then
        right=332
    else
        right=302
    fi
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3452x2480+360+$right +repage -rotate 270 -colorspace gray -level 0%,50% $i ../release_evn/$newname
done
