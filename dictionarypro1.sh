#!/bin/bash -x
read -p "Enter the year" year
if [ $year -eq 1992 ] || [ $year -eq 1993 ]
then
declare -a months
num=1
while [ $num -le 50 ]
do
        var=$(( RANDOM%12+1 ))
        months[$num]=$var
        if [ $var -eq 1 ]
        then
                jan[$num]=$var
        elif [ $var -eq 2 ]
        then
                feb[$num]=$var
        elif [ $var -eq 3 ]
        then
                mar[$num]=$var
         elif [ $var -eq 4 ]
        then
                april[$num]=$var
         elif [ $var -eq 5 ]
        then
                may[$num]=$var
         elif [ $var -eq 6 ]
        then
                june[$num]=$var
         elif [ $var -eq 7 ]
        then
                july[$num]=$var
         elif [ $var -eq 8 ]
        then
                aug[$num]=$var
           elif [ $var -eq 9 ]
        then
                sep[$num]=$var
           elif [ $var -eq 10 ]
        then
                oct[$num]=$var
        elif [ $var -eq 11 ]
        then
                nov[$num]=$var
        else
                dec[$num]=$var
        fi
        num=$(( $num+1 ))
done

echo ${#jan[@]} "members celebrating bday in the month of jan : " [${!jan[@]}]
echo ${#feb[@]} "members celebrating bday in the month of jan : " [${!feb[@]}]
echo ${#mar[@]} "members celebrating bday in the month of jan : " [${!mar[@]}]
echo ${#april[@]} "members celebrating bday in the month of jan : " [${!april[@]}]
echo ${#may[@]} "members celebrating bday in the month of jan : " [${!may[@]}]
echo ${#june[@]} "members celebrating bday in the month of jan : " [${!june[@]}]
echo ${#july[@]} "members celebrating bday in the month of jan : " [${!july[@]}]
echo ${#aug[@]} "members celebrating bday in the month of jan : " [${!aug[@]}]
echo ${#sep[@]} "members celebrating bday in the month of jan : " [${!sep[@]}]
echo ${#oct[@]} "members celebrating bday in the month of jan : " [${!oct[@]}]
echo ${#nov[@]} "members celebrating bday in the month of jan : " [${!nov[@]}]
echo ${#dec[@]} "members celebrating bday in the month of jan : " [${!dec[@]}]

else
    echo "Enter the year between 1992 and 1993 only"
fi
