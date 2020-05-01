#!/bin/bash

#Bring in this massive wall of names
nameArr=('Constance Castillo' 'Kerry Goodwin' 'Dorothy Carson' 'Craig Williams' 'Daryl Guzman' 'Sherman Stewart' 'Marvin Collier' 'Javier Wilkerson' 'Lena Olson' 'Claudia George' 'Erik Elliott' 'Traci Peters', 'Jack Burke' 'Jody Turner' 'Kristy Jenkins' 'Melissa Griffin' 'Shelia Ballard' 'Armando Weaver' 'Elsie Fitzgerald' 'Ben Evans' 'Lucy Baker' 'Kerry Anderson' 'Kendra Tran' 'Arnold Wells' 'Anita Aguilar' 'Earnest Reeves' 'Irving Stone' 'Alice Moore' 'Leigh Parsons' 'Mandy Perez' 'Rolando Paul' 'Delores Pierce' 'Zachary Webster' 'Eddie Ward' 'Alvin Soto' 'Ross Welch' 'Tanya Padilla' 'Rachel Logan' 'Angelica Richards' 'Shelley Lucas' 'Alison Porter' 'Lionel Buchanan' 'Luis Norman' 'Milton Robinson' 'Ervin Bryant' 'Tabitha Reid' 'Randal Graves' 'Calvin Murphy' 'Blanca Bell' 'Dean Walters' 'Elias Klein' 'Madeline White' 'Marty Lewis' 'Beatrice Santiago' 'Willis Tucker' 'Diane Lloyd' 'Al Harrison' 'Barbara Lawson' 'Jamie Page' 'Conrad Reynolds' 'Darnell Goodman' 'Derrick Mckenzie' 'Erika Miller' 'Tasha Todd' 'Aaron Nunez' 'Julio Gomez' 'Tommie Hunter' 'Darlene Russell' 'Monica Abbott' 'Cassandra Vargas' 'Gail Obrien' 'Doug Morales' 'Ian James' 'Jean Moran' 'Carla Ross' 'Marjorie Hanson' 'Clark Sullivan' 'Rick Torres' 'Byron Hardy' 'Ken Chandler' 'Brendan Carr' 'Richard Francis' 'Tyler Mitchell' 'Edwin Stevens' 'Paul Santos' 'Jesus Griffith' 'Maggie Maldonado' 'Isaac Allen' 'Vanessa Thompson' 'Jeremy Barton' 'Joey Butler' 'Randy Holmes' 'Loretta Pittman' 'Essie Johnston' 'Felix Weber' 'Gary Hawkins' 'Vivian Bowers' 'Dennis Jefferson' 'Dale Arnold' 'Joseph Christensen' 'Billie Norton' 'Darla Pope' 'Tommie Dixon' 'Toby Beck' 'Jodi Payne' 'Marjorie Lowe' 'Fernando Ballard' 'Jesse Maldonado' 'Elsa Burke' 'Jeanne Vargas' 'Alton Francis' 'Donald Mitchell' 'Dianna Perry' 'Kristi Stephens' 'Virgil Goodwin' 'Edmund Newton' 'Luther Huff' 'Hannah Anderson' 'Emmett Gill' 'Clayton Wallace' 'Tracy Mendez' 'Connie Reeves' 'Jeanette Hansen' 'Carole Fox' 'Carmen Fowler' 'Alex Diaz' 'Rick Waters' 'Willis Warren' 'Krista Ferguson' 'Debra Russell' 'Ellis Christensen' 'Freda Johnston' 'Janis Carpenter' 'Rosemary Sherman' 'Earnest Peters' 'Kelly West' 'Jorge Caldwell' 'Moses Norris' 'Erica Riley' 'Ray Gordon' 'Abel Poole' 'Cary Boone' 'Grant Gomez' 'Denise Chapman' 'Vernon Moran' 'Ben Walker' 'Francis Benson' 'Andrea Sullivan', 'Wayne Rice' 'Jamie Mason' 'Jane Figueroa' 'Pat Wade' 'Rudy Bates' 'Clyde Harris' 'Andre Mathis' 'Carlton Oliver' 'Merle Lee' 'Amber Wright' 'Russell Becker' 'Natalie Wheeler' 'Maryann Miller' 'Lucia Byrd' 'Jenny Zimmerman' 'Kari Mccarthy' 'Jeannette Cain' 'Ian Walsh' 'Herman Martin' 'Ginger Farmer' 'Catherine Williamson' 'Lorena Henderson' 'Molly Watkins' 'Sherman Ford' 'Adam Gross' 'Alfred Padilla' 'Dwayne Gibson' 'Shawn Hall' 'Anthony Rios' 'Kelly Thomas' 'Allan Owens' 'Duane Malone' 'Chris George' 'Dana Holt' 'Muriel Santiago' 'Shelley Osborne' 'Clinton Ross' 'Kelley Parsons' 'Sophia Lewis' 'Sylvia Cooper' 'Regina Aguilar' 'Sheila Castillo' 'Sheri Mcdonald' 'Lynn Hodges' 'Patrick Medina' 'Arlene Tate' 'Minnie Weber' 'Geneva Pena' 'Byron Collier' 'Veronica Higgins' 'Leo Roy' 'Nelson Lopez')
#echo ${nameArr[*]}

#Make the functions
#This function handles finding and outputting the first names
function getFirstNames
{
	echo ""
	read -p "Enter the first name, or a partial start of the first name: " userIn
	#echo "You entered " $userIn
	#First lets correct the capitalization
	#Lowercase the input
	userIn=$(echo $userIn | tr [:upper:] [:lower:])
	#echo $userIn
	#Seperate the first and last names
	#fName=$(echo $userIn | cut -d " " -f 1)
	#lName=$(echo $userIn | cut -d " " -f 2)
	#Seperate the first name
	fInitial=$(echo ${userIn:0:1} | tr [:lower:] [:upper:])
	fRemain=${userIn:1}
	fName="$fInitial$fRemain"

	#Now loop through the names array and determine if any names are similar to your input
	#for i in ${nameArr[*]};
	hits=0
	for(( i=0; i<${#nameArr[*]}; i=i+1));
	do
		#Get a substring of the name equal to the length of the given input
		str=${nameArr[$i]}
		str=$(echo $str | cut -c1-${#fName})
		#echo $str
		#If the input and substring match print the name
		if [[ $str == $fName ]];then
			echo ${nameArr[$i]}
			hits=$hits+1
		fi
	done

	if [[ $hits == 0 ]];then
		echo "No first name was found starting with " $userIn
	fi
}

function getLastNames
{
	#This function will search the system for last names and print off matches
	echo ""
	read -p "Enter the last name, or a partial start of the last name: " userIn
	#First lets correct the capitalization
	#Lowercase the input
	userIn=$(echo $userIn | tr [:upper:] [:lower:])
	#Seperate the first and last names
	#Seperate the first name
	lInitial=$(echo ${userIn:0:1} | tr [:lower:] [:upper:])
	lRemain=${userIn:1}
	lName="$lInitial$lRemain"
	#echo $lName

	#Now we need to loop through the names array and determine if any names are similar to the input
	hits=0
	for(( i=0; i<${#nameArr[*]}; i=i+1));
	do
		#Isolate the last name part of the array
		str=${nameArr[$i]}
		str=$(echo $str | cut -d' ' -f 2)
		#echo $str
		#Now cut the last name to the same length as the imput
		str=$(echo $str | cut -c1-${#lName})
		#If the input and substring match print the name
		if [[ $str == $lName ]];then
			echo ${nameArr[$i]}
			hits=$hits+1
		fi
	done

	if [[ $hits == 0 ]];then
		echo "No last name was found starting with " $userIn
	fi
}

#TODO: Fix the space detection
function addNewName
{
	echo ""
	#This function gets info from the user to add in a new name to the name array
	#First lets get some input from the user
	fName=""
	lName=""
	space=" "
	#This while loop will get us the first and last name without spaces
	while $true
	do
		read -p "Enter the new first name: " fName
		pattern="+[[:space:]]+"
		#echo "Debug: fName = " $fName
		if [[ $fname =~ $pattern ]];then
			#If we get here there was a space in the first name
			echo "Just the first name please. No spaces."
			continue
		fi
		#numSpace=0
		#We are going to loop through the word and see if there are any space
		#for(( i=0; i<${#fName}; i=i+1));
		#do
			#echo ${fName[$i]}
			#if [[ $fName[$i] == " " ]];then
				#numSpace=$numSpace+1
			#fi
		#done
		#if [[ $numSpace != 0 ]];then
			#echo "Just the first name please. No spaces."
			#continue
		#fi
		read -p "Enter the new last name: " lName
		break 
	done

	#Now formal the first and last name propperly
	fName=$(echo $fName | tr [:upper:] [:lower:])
	lName=$(echo $lName | tr [:upper:] [:lower:])


	fInitial=$(echo ${fName:0:1} | tr [:lower:] [:upper:])
	fRemain=${fName:1}
	fName="$fInitial$fRemain"

	lInitial=$(echo ${lName:0:1} | tr [:lower:] [:upper:])
	lRemain=${lName:1}
	lName="$lInitial$lRemain"

	fullName="$fName$space$lName"
	#echo "Full Name: " $fullName

	#We have a full name now we need to add it to the names
	nameArr+=("$fullName")
	echo ""
	echo $fullName " has been added"
	echo ""
}

function deleteName
{
	#This function allows the user to delete a name from the list
	while $true
	do
		echo ""
		echo "Delete a name by entering the full name i.e. John Smith"
		read -p "Enter the full name (Q to return to the main menu, 1 to search for first names): " target
		hits=0
		if [[ $target == "q" || $target == "Q" ]];then
			break
		elif [[ $target == 1 ]];then
			getFirstNames
		else
			#First we need a variable to keep track of any matches
			killMark=0
			for(( i=0; i<${#nameArr[*]}; i=i+1));
			do
				#We are going to loop through the array and see if any fields match our target
				if [[ ${nameArr[$i]} == $target ]];then
					#We have a hit!
					killMark=1
				fi
			done
			#If we had a target match earlier copy everything BUT the match into a new array
			if [[ $killMark == 1 ]];then
				new_array=()
				for value in "${nameArr[@]}"
				do
					[[ $value != $target ]] && new_array+=($value)
				done
				nameArr=("${new_array[@]}")
				unset new_array
				echo ""
				echo $target " has been deleted from the array"
				echo ""
			else
				echo $target " was not found in the array."
			fi
		fi
	done
}

#First lets make a menu variable so we dont have to spam this block of text each time we need it
menu="\nPlease select from the following options:\n
1. List all first names beginning with a chosen letter\n
2. List all last names beginning with a chosen letter\n
3. Add a name\n
4. Delete a name\n
5. Exit\n"

#Set up the main loop
while $true
do
	#Call the menu and get the user input
	echo -e $menu
	read -p "Option#: " choice
	#echo -e "You entered " $choice

	if [[ $choice == 1 ]];then
		#List all first names beginning with a chosen series of letters
		getFirstNames
	elif [[ $choice == 2 ]];then
		#List all names beginning with a chosen letter
		getLastNames
		#echo -e "You entered " $choice
	elif [[ $choice == 3 ]];then
		addNewName
	elif [[ $choice == 4 ]];then
		deleteName
	elif [[ $choice == 5 ]];then
		#Exit the program
		echo "Exiting program..."
		break
	else
		#This is if the user enters something invalid
		echo "That is not a valid option. Please try again."
	fi

done
