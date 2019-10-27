
#!/bin/bash
touch cbd.txt
sort -k2 -V $1 | awk 'BEGIN{FS=" |-"}{if($1 ~ /^[a-zA-Z]{4}$/)if($2%2 == 1)printf("%c\n",$3+3)}' > cbd.txt
echo | awk 'FNR==NR{a[$1]=$2}{printf("%c",a[$0])}' $2 cbd.txt
rm cbd.txt & exit
