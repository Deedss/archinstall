#!/bin/bash

####### Printing Setup #######
pacman -S --needed cups cups-filters cups-pdf ghostscript gsfonts foomatic-db-engine foomatic-db foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds gutenprint foomatic-db-gutenprint-ppds splix

systemctl enable org.cups.cupsd