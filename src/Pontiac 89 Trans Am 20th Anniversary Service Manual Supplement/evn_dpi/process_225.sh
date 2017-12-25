for i in 225/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -crop 1756x2436+1792+182 +repage -colorspace gray -rotate 180 -level 0%,50% $i ../release_evn/$newname
done
