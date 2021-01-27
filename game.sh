# A randomness game
echo -e "\t\tWelcome to the"
echo -e "\t\t\033[5mGame\033[0m"	# echo -e ...  # Interprets escaped characters like \t, \n, \a, and other control characters
echo
waitingnumber=$(( 0 + $RANDOM % 3 ))	# random value bw 0 and 3
mysterynumber=$(( 1 + $RANDOM % 10 ))	# random value bw 1 and 10
declare -a fortunes=(
	"Line1"
	"Line2"
	"Line3"
	"Line4"
	"Line5"
	"Line6"
	"Line7"
	"Line8"
	"Line9"
	"Line10"
)
case $waitingnumber in
	0) sleep 1; echo "One moment please..."; sleep 1;;
	1) sleep 1; echo "Yours coming shortly..."; sleep 2;;
	2) sleep 1; echo "Preparing..."; sleep 1;;
	3) sleep 1; echo "So dark today..."; sleep 3;;
esac
echo
echo ${fortunes[mysterynumber]}
echo
