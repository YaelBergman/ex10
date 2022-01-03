#!/bin/bash



echo 'a. number of lines with sherlock or holmes:' 

sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | wc -l

echo 'b. nubmer of times with sherlock or holmes:'

sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | grep -oE Sherlock\|Holmes | wc -l


echo 'c. replace Sherlock to yael:'

cat sherlockholmes.txt >  sherlockholmes_backup1.txt
sed  's/Sherlock/Yael/g' sherlockholmes_backup1.txt


#echo 'd.5 most common words after sherlock:'


echo 'e.delete full name:'

cat sherlockholmes.txt >  sherlockholmes_backup2.txt

sed -i -E "/([A-Z])\w+.([A-Z])\w+/d" ./sherlockholmes_backup2.txt



echo 'f. replace curly brackets to square:' 

sed 's/(/[/g; s/)/]/g' sherlockholmes.txt



