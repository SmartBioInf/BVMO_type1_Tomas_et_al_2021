#!/bin/bash

source ~/.bashrc;

# load project configuration
source ../conf/config.txt

echo "change colors";
# for all clustal files
for file in ${html_folder}/*.html ; do
  echo ${file}; 
  perl -pi -e 's/color:#90fe23;color:#000000/color:#6a0cd8;color:#FFFFFF/g' ${file};
  perl -pi -e 's/#90fe23/#6a0cd8/g' ${file};
  perl -pi -e 's/#fe5e2d/#196f6e/g' ${file};
  perl -pi -e 's/#2e3d2d/#fd8401/g' ${file};
  perl -pi -e 's/<TITLE>MView<\/TITLE>//g' ${file};
done;
