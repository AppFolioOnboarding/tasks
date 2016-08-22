#!/bin/bash

FILE=lists/fulltime.txt
FLAGS=""

if [ $# -eq 1 ]; then
    if [ "$1" == "interns" ]; then
        FLAGS="--no-assignees"
        FILE=lists/interns.txt
    else
        echo "Invalid argument '$1'"
        exit 1
    fi
fi

awk '{print "AppFolioOnboarding/" $0}' $FILE | xargs sync_issues --labels labels.yml tasks $FLAGS
