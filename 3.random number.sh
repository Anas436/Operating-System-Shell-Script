# Generate a randomly based range defined by the user

#Take the lower and the upper value from the user
echo "Enter the minimum value:"
read minimum
echo "Enter the maximum value:"
read maximum

#Check the taken values are valid
if [[ $maximum > $minimum ]]; then
    echo "Maximum value can't be lower than minimum value"
    exit 1
fi
if [[ $minimum < 5 ]]; then
    echo "To Small"
    exit 1
fi

if [[ $maximum > 13 ]]; then
    echo "To Big"
    exit 1
fi

#Find out the difference between the numbers
diff=$(($maximum-$minimum))

#Check the difference value
if [[ $diff == 1 ]]; then
    echo "The range of numbers must be more than 1"
    exit 1
fi

#Generate the random number
randomNumber=$(($minimum + $RANDOM % $maximum))
#Print the generated number
echo "The generated random number is: $randomNumber"