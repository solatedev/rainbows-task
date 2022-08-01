#!/bin/bash
file_path="file.txt"

# print ho many times the rainbow appears
number_of_raibow=`grep -o -i Rainbows file.txt | wc -l`
echo "Number of RainBows: $number_of_raibow"

# replace all rainbow with cars in the file
echo "Replacing all RainBows with cars"
sed -i 's/Rainbows/cars/g' $file_path

# print  the json output of the file
awk ' BEGIN { print "[" ; }  { print " {\n" "   \"NAME\" : \""   $1  "\",\n"  "   \"VALUE\" : \""  $3 "\",\n"    " }" }   END { print "]" } ' $file_path
