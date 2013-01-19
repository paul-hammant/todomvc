#!/bin/sh
 
# Creating an Empty db file and filling it with my structure
cat /dev/null > analysis.db
echo -e $STRUCTURE > /tmp/tmpstructure
sqlite3 analysis.db < import.sql
rm -f /tmp/tmpstructure;

sqlite3 analysis.db < pivot.sql | tr '|' ',' 

# TODO bargraph.pl or gnuplot (as opposed to Excel)