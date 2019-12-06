#!/bin/bash

cd /var/www/html/tdl-test/
wget https://www.irelandwestairport.com/flight_information
sed -r -e 's|<img src="(.+)"|<img src"https://www.irelandwestairport.com\1"|g' flight_information > flight
mv flight index.html
rm flight_information

git add *
git commit -m "auto-commit `date`"
git push origin master
