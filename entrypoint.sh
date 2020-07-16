#!/bin/sh -l

echo "Starting the build"

echo "Your CFML engine of choice is $1"

curl --location -o /tmp/box.zip https://www.ortussolutions.com/parent/download/commandbox/type/bin
unzip /tmp/box.zip -d /tmp/
chmod a+x /tmp/box
/tmp/box install production=false
/tmp/box server start cfengine=$1
mkdir /tmp/results/
/tmp/box testbox run outputFile=testbox.xml reporter=junit