#!/bin/bash
#!/bin/bash
# Script get  the N 50 values out of directories
OUTPUT_FILE=n50.dat
echo "hash_length N50" > $OUTPUT_FILE

for DIR in $( ls -dP.catct.auto.* ); do
   HASH_LENGTH=$( echo SDIR | cut -f4 -d'.' )
   STATS_FILE=$DIR/stats.txt
   N50=$( head -n1 $STATS_FILE |  cut -f2  -d' ' )
echo "$HASH_LENGHT $N50" >> $OUTPUT_FILE
done
