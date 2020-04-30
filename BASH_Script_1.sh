#! /bin/sh

echo "Welcome to the soda machine. You can enter values of 5, 10, or 25 in payment"
echo ""
soda=""
read -p "What type of soda would you like? " soda
#echo $soda

#Randomize the price of the drink
dPrice=100
rando=$((($RANDOM%7-3)*5))
#rando = $(($rando*5))
dPrice=$(($dPrice+$rando))

echo "The current cost of " $soda " is " $dPrice
tPaid=0

#Make an infinite while loop
while true;
do
	coin=0
	read -p "Please enter a coin: " coin
	if [ $coin -eq 5 ];then
		tPaid=$(($tPaid+5))
		echo "You have inserted a nickel"
	elif [ $coin -eq 10 ];then
		tPaid=$(($tPaid+10))
		echo "You have inserted a dime"
	elif [ $coin -eq 25 ];then
		tPaid=$(($tPaid+25))
		echo "You have inserted a quarter"
	else
		echo "Error: Invalid Input, please try again"
		continue
	fi
	#Now we compare the tPaid to the dPrice
	if [ $tPaid -gt $dPrice ];then
		change=$(($tPaid-$dPrice))
		echo "You have been refunded " $change " cents."
		break
	elif [ $tPaid -eq $dPrice ];then
		break
	else
		sumOwed=$(($dPrice-$tPaid))
		echo "Please enter the remaining " $sumOwed
		echo ""
		continue
	fi
done

echo "Enjoy your " $soda "!"
echo ""
read -p "Press enter to close the program"
