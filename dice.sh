declare -A dice
dice[one]=0
dice[two]=0
dice[three]=0
dice[four]=0
dice[five]=0
dice[six]=0
while [ true ]
do
	dice[count]=$(( (RANDOM%6) +1 ))
	a=${dice[count]}
	if [ $a -eq 1 ]
	then
		((one++))
	fi
	if [ $a -eq 2 ]
	then
		((two++))
	fi
	if [ $a -eq 3 ]
	then
		((three++))
	fi
	if [ $a -eq 4 ]
	then
		((four++))
	fi
	if [ $a -eq 5 ]
	then
		((five++))
	fi
	if [ $a -eq 6 ]
	then
		((six++))
	fi
	if [[ $one -eq 10 ]]
	then
		echo "The count of dice value one comes 10 times"
		break
	fi
	if [[ $two -eq 10 ]]
	then
		echo "The count of dice value two comes 10 times"
		break
	fi
	if [[ $three -eq 10 ]]
	then
		echo "The count of dice value three comes 10 times"
		break
	fi
	if [[ $four -eq 10 ]]
	then
		echo "The count of dice value four comes 10 times"
		break
	fi
	if [[ $five -eq 10 ]]
	then
		echo "The count of dice value five comes 10 times"
		break
	fi
	if [[ $six -eq 10 ]]
	then
		echo "The count of dice value six comes 10 times"
		break
	fi
done
arr=($one $two $three $four $five $six)
echo ${arr[*]}
min=${arr[0]}
for i in "${arr[@]}"
do
if [[ $i -le $min ]]
then
	min=$i
fi
done
echo "The dice value comes for min count of $min times"
