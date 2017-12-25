counter=1
counter_back=160
conv_opts="-crop 100%x50%+0+0 +repage -rotate 90 -colorspace gray"

for i in src/*; do
    if [ $(($counter%2)) -eq 1 ]; then
        topname="$(printf "%03d" $counter).png"
        bottomname="$(printf "%03d" $counter_back).png"
    else
        topname="$(printf "%03d" $counter_back).png"
        bottomname="$(printf "%03d" $counter).png"
    fi
    convert -gravity North $conv_opts $i release/$topname
    convert -gravity South $conv_opts $i release/$bottomname

    counter=$(($counter+1))
    counter_back=$(($counter_back-1))
done

cp cover_front.png release/000.png
cp appendix.jpg release/161.jpg
cp cover_back.png release/162.png
