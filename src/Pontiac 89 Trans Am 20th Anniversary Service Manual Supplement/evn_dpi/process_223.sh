for i in 223/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -crop 1724x2432+1818+192 +repage -colorspace gray -rotate 180 -level 0%,50% $i ../release_evn/$newname
done
