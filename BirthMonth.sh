declare -A birthday
birthday[1]="Jan92"
birthday[2]="Feb92"
birthday[3]="Mar92"
birthday[4]="Apr92"
birthday[5]="May92"
birthday[6]="Jun92"
birthday[7]="Jul92"
birthday[8]="Aug92"
birthday[9]="Sep92"
birthday[10]="Oct92"
birthday[11]="Nov92"
birthday[12]="Dec92"
birthday[13]="Jan93"
birthday[14]="Feb93"
birthday[15]="Mar93"
birthday[16]="Apr93"
birthday[17]="May93"
birthday[18]="Jun93"
birthday[19]="Jul93"
birthday[20]="Aug93"
birthday[21]="Sep93"
birthday[22]="Oct93"
birthday[23]="Nov93"
birthday[24]="Dec93"

for (( count=1; count<=50; count++ ))
do
        a=$((RANDOM%24+1))
        birth[$a]=$((${birth[$a]}+1))
done

for ((i=1; i<=24; i++))
do
        echo "Birth in" ${birthday[$i]} " are " ${birth[$i]}
done
