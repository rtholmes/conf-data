#/bin/sh

echo "Pulling from github"
git pull


DATES=`date +%s`

echo "New date string: $DATES"
# {"LastUpdatePOSIX" : "1363472766"}
echo "{\"LastUpdatePOSIX\" : \"$DATES\"}" > IndexVersion.json;
