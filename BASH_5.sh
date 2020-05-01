#!/bin/bash

#Bring in this massive wall of names
nameArr=('Constance Castillo' 'Kerry Goodwin' 'Dorothy Carson' 'Craig Williams' 'Daryl Guzman' 'Sherman Stewart' 'Marvin Collier' 'Javier Wilkerson' 'Lena Olson' 'Claudia George' 'Erik Elliott' 'Traci Peters', 'Jack Burke' 'Jody Turner' 'Kristy Jenkins' 'Melissa Griffin' 'Shelia Ballard' 'Armando Weaver' 'Elsie Fitzgerald' 'Ben Evans' 'Lucy Baker' 'Kerry Anderson' 'Kendra Tran' 'Arnold Wells' 'Anita Aguilar' 'Earnest Reeves' 'Irving Stone' 'Alice Moore' 'Leigh Parsons' 'Mandy Perez' 'Rolando Paul' 'Delores Pierce' 'Zachary Webster' 'Eddie Ward' 'Alvin Soto' 'Ross Welch' 'Tanya Padilla' 'Rachel Logan' 'Angelica Richards' 'Shelley Lucas' 'Alison Porter' 'Lionel Buchanan' 'Luis Norman' 'Milton Robinson' 'Ervin Bryant' 'Tabitha Reid' 'Randal Graves' 'Calvin Murphy' 'Blanca Bell' 'Dean Walters' 'Elias Klein' 'Madeline White' 'Marty Lewis' 'Beatrice Santiago' 'Willis Tucker' 'Diane Lloyd' 'Al Harrison' 'Barbara Lawson' 'Jamie Page' 'Conrad Reynolds' 'Darnell Goodman' 'Derrick Mckenzie' 'Erika Miller' 'Tasha Todd' 'Aaron Nunez' 'Julio Gomez' 'Tommie Hunter' 'Darlene Russell' 'Monica Abbott' 'Cassandra Vargas' 'Gail Obrien' 'Doug Morales' 'Ian James' 'Jean Moran' 'Carla Ross' 'Marjorie Hanson' 'Clark Sullivan' 'Rick Torres' 'Byron Hardy' 'Ken Chandler' 'Brendan Carr' 'Richard Francis' 'Tyler Mitchell' 'Edwin Stevens' 'Paul Santos' 'Jesus Griffith' 'Maggie Maldonado' 'Isaac Allen' 'Vanessa Thompson' 'Jeremy Barton' 'Joey Butler' 'Randy Holmes' 'Loretta Pittman' 'Essie Johnston' 'Felix Weber' 'Gary Hawkins' 'Vivian Bowers' 'Dennis Jefferson' 'Dale Arnold' 'Joseph Christensen' 'Billie Norton' 'Darla Pope' 'Tommie Dixon' 'Toby Beck' 'Jodi Payne' 'Marjorie Lowe' 'Fernando Ballard' 'Jesse Maldonado' 'Elsa Burke' 'Jeanne Vargas' 'Alton Francis' 'Donald Mitchell' 'Dianna Perry' 'Kristi Stephens' 'Virgil Goodwin' 'Edmund Newton' 'Luther Huff' 'Hannah Anderson' 'Emmett Gill' 'Clayton Wallace' 'Tracy Mendez' 'Connie Reeves' 'Jeanette Hansen' 'Carole Fox' 'Carmen Fowler' 'Alex Diaz' 'Rick Waters' 'Willis Warren' 'Krista Ferguson' 'Debra Russell' 'Ellis Christensen' 'Freda Johnston' 'Janis Carpenter' 'Rosemary Sherman' 'Earnest Peters' 'Kelly West' 'Jorge Caldwell' 'Moses Norris' 'Erica Riley' 'Ray Gordon' 'Abel Poole' 'Cary Boone' 'Grant Gomez' 'Denise Chapman' 'Vernon Moran' 'Ben Walker' 'Francis Benson' 'Andrea Sullivan', 'Wayne Rice' 'Jamie Mason' 'Jane Figueroa' 'Pat Wade' 'Rudy Bates' 'Clyde Harris' 'Andre Mathis' 'Carlton Oliver' 'Merle Lee' 'Amber Wright' 'Russell Becker' 'Natalie Wheeler' 'Maryann Miller' 'Lucia Byrd' 'Jenny Zimmerman' 'Kari Mccarthy' 'Jeannette Cain' 'Ian Walsh' 'Herman Martin' 'Ginger Farmer' 'Catherine Williamson' 'Lorena Henderson' 'Molly Watkins' 'Sherman Ford' 'Adam Gross' 'Alfred Padilla' 'Dwayne Gibson' 'Shawn Hall' 'Anthony Rios' 'Kelly Thomas' 'Allan Owens' 'Duane Malone' 'Chris George' 'Dana Holt' 'Muriel Santiago' 'Shelley Osborne' 'Clinton Ross' 'Kelley Parsons' 'Sophia Lewis' 'Sylvia Cooper' 'Regina Aguilar' 'Sheila Castillo' 'Sheri Mcdonald' 'Lynn Hodges' 'Patrick Medina' 'Arlene Tate' 'Minnie Weber' 'Geneva Pena' 'Byron Collier' 'Veronica Higgins' 'Leo Roy' 'Nelson Lopez')
#echo ${nameArr[*]}

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
	echo -e "You entered " $choice
done
