for i in 227/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    if echo "356.jpg,354.jpg,352.jpg,350.jpg" | grep -q "$(basename $i)"; then
        cs=""
    else
        cs="-colorspace gray"
    fi
    convert -crop 1774x2456+1792+170 +repage $cs -rotate 180 -level 0%,50% $i ../release_evn/$newname
done
