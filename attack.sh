#!/usr/bin/env bash

echo 'Compiling'; echo
./gradlew distTar -q

pushd my-app-bad-distribution/build/distributions > /dev/null
tar xf my-app-bad-distribution-1.0.0.tar
pushd my-app-bad-distribution-1.0.0 > /dev/null
rm -f attack-file
JAVA_OPTS='`echo "THIS WAS WRITTEN THROUGH SHELL VARIABLE CODE INJECTION" > attack-file`' bin/my-app-bad-distribution
echo 'File written to disk through environment variable code injection:'
cat attack-file
popd -2 > /dev/null
echo
