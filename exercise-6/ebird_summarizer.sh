#! /bin/bash
# the next line will create a new file called formatted_eBird_data.csv
replace_newlines.sh eBird_data.csv
sed 's/,\s /g' formatted_eBird._data.csv > formatted_eBird_data.csv
python does_something.py reformatted_eBird_data.csv
