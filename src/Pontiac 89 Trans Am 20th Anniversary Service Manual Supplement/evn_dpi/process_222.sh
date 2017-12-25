for i in 222/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -crop 1724x2424+1822+190 +repage -colorspace gray -rotate 180 -level 0%,50% $i ../release_evn/$newname
done
