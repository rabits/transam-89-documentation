for i in 223/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -crop 1724x2432+1780+230 +repage $i ../release_odd/$newname
    gimp -i --batch-interpreter python-fu-eval -b 'image = gimp.image_list()[0]; print("%s ..." % image.filename); pdb.plug_in_retinex(image, image.active_drawable, 240, 3, 0, 1.2); pdb.gimp_file_save(image, image.active_drawable, image.filename.replace(".jpg","_pol.jpg"), "?")' -b 'pdb.gimp_quit(0)' ../release_odd/$newname
    convert -colorspace gray -level 0%,50% ../release_odd/$newname ../release_odd/$newname
done
