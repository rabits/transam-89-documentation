for i in 229/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -crop 1796x2472+1782+158 +repage -colorspace gray -rotate 180 -level 0%,50% $i ../release_evn/$newname
done
