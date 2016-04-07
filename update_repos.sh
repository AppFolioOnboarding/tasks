#!/bin/bash

read -rd '' REPOS << EOF
appfolioonboarding/image-sharer-wilsonyqm
appfolioonboarding/image-sharer-blakeherrington
appfolioonboarding/image-sharer-conproctor
appfolioonboarding/bala
appfolioonboarding/perkins_eidolon
appfolioonboarding/vanilla
EOF

FLAGS="-u"

if [ $# -eq 1 ]; then
    if [ "$1" == "--create" ]; then
        FLAGS=""
    fi
fi

sync_issues --labels labels.yml tasks $FLAGS $REPOS
