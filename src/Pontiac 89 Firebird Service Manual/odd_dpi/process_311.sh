for i in 311/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    if echo '311/1427.jpg,311/1431.jpg,311/1417.jpg' | grep -q "$i"; then
        echo $i
        right=400
    else
        right=312
    fi
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3202x2380+460+$right +repage -rotate 90 -colorspace gray -level 0%,50% $i ../release_odd/$newname
done
