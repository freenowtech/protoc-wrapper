#!/usr/bin/env bash

INSTALL_BASE_URL="https://raw.githubusercontent.com/freenowtech/protoc-wrapper/master"

print() {
    printf "$1" >&2
}

println() {
    echo "$1" >&2
}

print "Downloading Protoc Wrapper... "
curl "$INSTALL_BASE_URL/protocw" -o protocw.new --fail --silent
last_error=$?

if [ $last_error -ne 0 ]; then
    println "Error"
    println "Could not download Protoc Wrapper from $INSTALL_BASE_URL"
    exit $last_error
fi

println "Done"

println "Moving stuff around"
if [ -f protocw ]
then
    mv -f protocw protocw.old
fi

mv protocw.new protocw

println "Setting permissions"
chmod +x protocw

println "Cleaning up"
rm -f protocw.old

if [ ! -f protocw.properties ]
then
    ./protocw --configure
fi

println "Protoc Wrapper successfully installed"
