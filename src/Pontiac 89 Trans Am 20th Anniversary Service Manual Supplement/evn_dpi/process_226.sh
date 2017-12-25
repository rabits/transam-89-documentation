for i in 226/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    if echo "332.jpg,334.jpg,336.jpg,338.jpg,340.jpg,342.jpg,344.jpg,346.jpg,348.jpg" | grep -q "$(basename $i)"; then
        cs=""
    else
        cs="-colorspace gray"
    fi
    convert -crop 1752x2426+1808+194 +repage $cs -rotate 180 -level 0%,50% $i ../release_evn/$newname
done
