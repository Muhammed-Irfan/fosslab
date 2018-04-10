
echo -e "System information : \n"
echo  "Kernel Name : $(uname -s)"
echo  "5Kernel Release : $(uname -r)"
echo  "Kernel Version : $(uname -v)"
echo  "Operating System : $(uname -o)"
echo -e "\nAvailable Shells : $(cat /etc/shells)"
echo -e "\nCPU info : $(lscpu)"
echo -e "\nMemory Usage : $(free -h)"
echo -e "\nHard Drive Details : $(sudo fdisk -l)"
echo -e "\n\n\n"
echo -e "Currently logged in user : $(whoami)" '\n'
echo -e "Current Shell :" $SHELL '\n'
echo -e "Home Directory :" $HOME '\n'
echo -e "Operating System Type : $(uname -o)" '\n'
echo -e "Current Working Directory : $(pwd)" '\n'
echo -e "Number of users logged in: $(who -q | tail -n 1)"
