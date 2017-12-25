persp='250,72 312,72  3916,72 3854,72  3844,2672 3844,2672  312,2672 312,2672'
for i in 343/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -distort Perspective "$persp" -crop 3482x2550+360+192 +repage -rotate 270 -colorspace gray -level 0%,50% $i ../release_evn/$newname
done
