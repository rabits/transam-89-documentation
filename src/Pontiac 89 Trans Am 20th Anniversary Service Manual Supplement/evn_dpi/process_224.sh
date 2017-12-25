for i in 224/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -crop 1748x2424+1804+196 +repage -colorspace gray -rotate 180 -level 0%,50% $i ../release_evn/$newname
done
