#! /bin/bash

pushd t/10_responses
FILES=`ls -1 *.xml`
for f in $FILES;
  do 
    filename=$(basename "$f")
    extension="${filename##*.}"
    filename="${filename%.*}"
    echo "Converting $filename"
    response_body=`cat $f | perl -ne 's/\xEF\xBF\xBC//g; print' | sed -El 's/^/  /g'`
    cat > ${filename}.response <<EOL
---
content: |
${response_body}
headers: []
status: 200
EOL
  touch $filename.response.test.yml
  rm -f $f
  done

popd
