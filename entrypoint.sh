#!/bin/sh -l

echo "Starting the build"

echo "Your CFML engine of choice is $1"

box nstall production=false
box server start cfengine=$1
mkdir /tmp/results/
/tmp/box box testbox run outputFile=testbox.xml reporter=junit