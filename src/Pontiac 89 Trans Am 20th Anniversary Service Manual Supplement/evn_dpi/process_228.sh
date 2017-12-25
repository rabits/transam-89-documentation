for i in 228/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -crop 1792x2466+1766+166 +repage -colorspace gray -rotate 180 -level 0%,50% $i ../release_evn/$newname
done
