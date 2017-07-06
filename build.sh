#!/bin/bash

# Uses the HUGO_BIN environment variable to determine where the hugo binary is
# If this is not set, attempt to find it in the path, otherwise use this variable
if [ -z ${HUGO_BIN+x} ]
then
    HUGO_BIN=`which hugo`
else
    :
fi

rm -rf public 2>/dev/null
$HUGO_BIN --ignoreCache
aws s3 cp --recursive --exclude '.git/*' --exclude '.gitignore' --exclude '.gitmodules' --dryrun . s3://ffit-static-website-content/website/
