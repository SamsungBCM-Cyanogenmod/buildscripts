echo -e "\n\n Choose a device: \n"
echo -e "1. Galaxy S2 Plus NFC (s2vep)"
echo -e "2. Galaxy S2 Plus (s2ve)"
echo -e "3. Galaxy Grand Duos (baffin) \n\n"
read device

echo -e "\n\n Do you want to make clean? \n"
echo -e "1. Yes"
echo -e "2. No"
read cle

echo -e "\n\n Do you want to sync sources? \n"
echo -e "1. Yes"
echo -e "2. No"
read syn

res1=$(date +%s.%N)

if [ "$cle" == "1" ]
then
	echo -e "\n\n Cleaning... \n\n"
	make clean
fi

if [ "$syn" == "1" ]
then
	echo -e "\n\n Syncing sources... \n\n"
	repo sync
fi

echo -e "\n\n Setting up environment... \n\n"
. build/envsetup.sh

echo -e "\n\n Building... \n\n"

if [ "$device" == "1" ]
then
	lunch cm_s2vep-userdebug
	brunch s2vep
elif [ "$device" == "2" ]
then
	lunch cm_s2ve-userdebug
	brunch s2ve
elif [ "$device" == "3" ]
then
	lunch cm_baffin-userdebug
	brunch baffin
elif [ "$device" == "12" ]
then
	lunch cm_s2vep-userdebug
	brunch s2vep
	lunch cm_s2ve-userdebug
	brunch s2ve
elif [ "$device" == "13" ]
then
	lunch cm_s2vep-userdebug
	brunch s2vep
	lunch cm_baffin-userdebug
	brunch baffin
elif [ "$device" == "23" ]
then
	lunch cm_s2ve-userdebug
	brunch s2ve
	lunch cm_baffin-userdebug
	brunch baffin
elif [ "$device" == "123" ]
then
	lunch cm_s2vep-userdebug
	brunch s2vep
	lunch cm_s2ve-userdebug
	brunch s2ve
	lunch cm_baffin-userdebug
	brunch baffin
fi

res2=$(date +%s.%N)
echo "Time elapsed: $(echo "($res2 - $res1) / 60"|bc ) minutes"
