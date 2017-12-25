for i in 221/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -crop 1710x2410+1836+198 +repage -colorspace gray -rotate 180 -level 0%,50% $i ../release_evn/$newname
done
