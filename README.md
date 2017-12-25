Pontiac Firebird 1989 Documentation
===================================

Here you can find pretty rare documentation about the Firebird & Trans Am '89 automotive.
This repo contains released OCR pdf's and original scans of the books.

* **Pontiac 89 Firebird Owners Manual** - small book about usual service and howto use your car.
* **Pontiac 89 Firebird Service Manual** - pretty huge manual about all the '89 Firebirds. *Cleaning of the electric schema pages drives me nuts!))*
* **Pontiac 89 Trans Am 20th Anniversary Service Manual Supplement** - additional manual about with features of 20th anniversary trans am.
* **Pontiac 89 Firebird Trans Am Booklet** - nice pictures & some info about firebirds.

Why?
----

I think all the documentation should be available worldwide to help owners fix & improve his devices.
Make sure that you using it for good purposes.

Process
-------

Scanning is a big deal. Of course it's possible to expand the book and scan with usual feed scanner - but it will destroy the original.
But we can use regular photo camera and some software to do it not destroying the book.

### HW Setup

To get a good quality of the picture without distortion we need a simple phone with camera, tripod and light source:
* Tight phone to the camera tripod.
* Place a book under the camera to get just one page picture with maximum resolution. I get ~350 dpi for the top page.
* Near the camera you need to place light source. Make sure that it evenly illuminates the page surface and there is no shadows.
* Tight the last page of the book to the surface to make sure, that it will not accidentally moved somewhere.
* Connect your camera to the power source and setup camera white balance. Also setup page placement on the display.

### Scanning

Now you're ready to do the scanning:
* Firstly you will scan odd pages - 1,3,5,7... Just turn the pages and click on shutter. Make sure that page is flat and have no distortion.
* Make the first shot with 1-inch black paper square - to determine the dpi of the first page.
* When you've done with the odd pages on the last one do the same black square photo to determine the last page DPI.
* Now rotate the book, open it from the last page and do the same operation for the even pages. They will be rotated, but it's ok.

### Preparing scans & OCR

If you did it right - you got a good source to do other stuff:
* Divide pages by DPI - you have top page DPI, last page DPI and number of page. Create DPI directories and move pages accordingly.
* Now for each DPI dir you can do some automation to crop, rotate and change the colorspace. Imagemagick & GIMP batch will help you here.
* When all the pages was cropped we need to prepare the pages for OCR - I used Scan Tailor for that, it will prepare TIFF's to process.
* After that you can use Tesseract or other software to recognize the pages & prepare the nice pdf file.

Support
-------
If this documentation helps you - you can support our open-source development by a small Bitcoin donation.

Bitcoin wallet: `15phQNwkVs3fXxvxzBkhuhXA2xoKikPfUy`
