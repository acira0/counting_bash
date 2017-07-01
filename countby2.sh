#!/bin/bash
#echo Counting By "2"
#turn your volume on

echo "▂ ▃ ▅ ▆ █ Counting by 2's █ ▆ ▅ ▃ ▂"

echo "Hi I'm Arica (future cyber security master)."
echo "What's your name?"
read name

# checks for letters and character length
while [[ ! $name =~ (^[a-zA-Z]+$) ]] || [ ${#name} -gt 10 ]
    do
        echo "Whoops I can't find your name on LinkedIn."
        read -p "Try again: " name
        echo
done


echo "Hi $name it is nice to meet you."


echo "Enter a number between 10 and 50 to see something magical: "
read $num

# checks for integers
while [[ !($num =~ ^[[:digit:]]+$) ]]
    do
        read -p "Sorry I need something more awesome to use, like a number between 10 and 50: " num
        echo
done

# checks for integer length
until [[ $num -gt 10 ]]
    do
        read -p "Sorry I need something more awesome to use (like a number between 10 and 50): " num
            echo
done

until [[ $num -lt 50 ]]
do
read -p "Sorry I need something more awesome to use (like a number between 10 and 50): " num
echo
done

echo "SHAZZAM!!!!!!!!!!"
echo

# counts integer input by 2's
counter=0
if ! [[ $(($num % 2)) == 0 ]];
    then
        counter=1
    else
        counter=0
fi

while [[ $counter -le $num ]];
    do
        echo $counter
        let counter=$counter+2
        sleep 0.1
done
echo
echo FINISHED
echo
echo ":-)"
echo
say "Thanks for playing"







