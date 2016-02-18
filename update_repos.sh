#!/bin/bash

read -rd '' REPOS << EOF
appfolioonboarding/Boying_ImageUploader
appfolioonboarding/Haomin_ImageUploader
appfolioonboarding/Li_Image_Share
appfolioonboarding/ss-vanity
appfolioonboarding/vanilla
appfolioonboarding/paul_image_share
appfolioonboarding/perkins_eidolon
EOF

FLAGS="-u"

if [ $# -eq 1 ]; then
    if [ "$1" == "--create" ]; then
        FLAGS=""
    fi
fi

sync_issues tasks $FLAGS $REPOS
