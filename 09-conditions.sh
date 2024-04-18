Number=$1

if [ $Number -gt 20 ]
then
   echo "$Number is greater than 20"
elif [ $Number==20 ]
then
   echo "$Number is equal to 20"
else
    echo "$Number is less than 20"
fi