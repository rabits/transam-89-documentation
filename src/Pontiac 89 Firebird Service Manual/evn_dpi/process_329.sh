cs="-colorspace gray"
for i in 329/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    if [ "$i" = "329/1198.jpg" ]; then
        cs=""
    fi
    if [ "$i" = "329/1222.jpg" ]; then
        cs="-colorspace gray"
    fi
    convert -distort Perspective "292,72 312,72  3916,72 3844,72  3844,2672 3844,2672  312,2672 312,2672" -crop 3362x2410+350+342 $cs +repage -rotate 270 -level 0%,50% $i ../release_evn/$newname
done
