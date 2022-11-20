t=$2
i=1
while :; do
while (($i<=$1))
do
y="${y}#"
echo -e -ne '\033[32;40m'"$y \033[31;40m${i}%\r"'\033[0m'
sleep $t
i=$(($i+1))
done
echo -e "\n"
if [[ $3 = "f" ]]; then
./counter.sh $1 $2 $3
elif [[ $3 = * ]]; then
break
fi
done
