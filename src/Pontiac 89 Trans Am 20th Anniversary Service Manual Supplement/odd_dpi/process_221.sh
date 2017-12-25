for i in 221/*; do
    newname=$(echo $i | sed 's/.jpg/.png/')
    convert -crop 1710x2410+1794+226 +repage $i ../release_odd/$newname
    gimp -i --batch-interpreter python-fu-eval -b 'image = gimp.image_list()[0]; print("%s ..." % image.filename); pdb.plug_in_retinex(image, image.active_drawable, 240, 3, 0, 1.2); pdb.gimp_file_save(image, image.active_drawable, image.filename.replace(".jpg","_pol.jpg"), "?")' -b 'pdb.gimp_quit(0)' ../release_odd/$newname
    convert -colorspace gray -level 0%,50% ../release_odd/$newname ../release_odd/$newname
done
