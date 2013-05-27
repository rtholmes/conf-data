#/bin/sh

echo "Pulling from github"
git pull | grep 'Already up-to-date.'

# if git pull returns 'Already up-to-date.' we should skip the rest


if [ $$ != '' ];
then
	echo "Metadata up-to-date; no version update required."
else
	DATES=`date +%s`

	echo "New date string: $DATES"
	# {"LastUpdatePOSIX" : "1363472766"}
	echo "{\"LastUpdatePOSIX\" : \"$DATES\"}" > IndexVersion.json;	
fi
	
