while getopts :u:p:ab option
do
	case $option in 
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "Got the A flag";;
		b) echo "Got the B flag";;
		?) echo "I don't know what th $OPTARG is!";;
	esac
done
echo "user: $user / pass: $pass"
