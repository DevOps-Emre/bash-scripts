while getopts u:p:ab option	# I want to now whether the flag is used, type without column
do
	case $option in 
		u) user=$OPTARG;;	# access to the arguments with OPTARG
		p) pass=$OPTARG;;
		a) echo "Got the A flag";;
		b) echo "Got the B flag";;
	esac
done
echo "user: $user / pass: $pass"
