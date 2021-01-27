while getopts u:p: option	# creates an options string which defines which options I'm looking for; my script will have -u and -p options
do
	case $option in 
		u) user=$OPTARG;;	# access to the arguments with OPTARG
		p) pass=$OPTARG;;
	esac
done
echo "user: $user / pass: $pass"
