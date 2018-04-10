x=0
while [ $x -eq 0 ]
do
  tput clear
  echo " 1. Addition"
  echo " 2. Subtraction"
  echo " 3. Multiplication"
  echo " 4. Division"
  echo " 5. Exit"
  echo -e "Enter Your choice : \c"
  
  read choice
  if [ $choice -ne 5 ]
  then
    echo -e "Enter the first number: \c"
    read a
    echo -e "Enter the second number : \c"
    read b
  fi
  case $choice in 
    1)  ans=$(( a + b ))
      echo "Sum: $ans"
      ;;
    2)  ans=$(( a - b ))
      echo "Difference: $ans"
      ;;
    3)  ans=$(( a * b ))
      echo "Product: $ans"
      ;;
    4)  ans=$(( a / b ))
      echo "Quotient: $ans"
      ;;
    5)  exit
      ;;
    *) echo "Invalid Choice"
      ;;
  esac
  sleep 3
done
