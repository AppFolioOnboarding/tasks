#!/bin/bash

read -rd '' REPOS << EOF
appfolioonboarding/mjewell_image_sharer
appfolioonboarding/paul_image_share
appfolioonboarding/perkins_eidolon
appfolioonboarding/Li_Image_Share
appfolioonboarding/Boying_ImageUploader
appfolioonboarding/Haomin_ImageUploader
appfolioonboarding/ss-vanity
appfolioonboarding/vanilla
EOF

FLAGS="-u"

if [ $# -eq 1 ]; then
    if [ "$1" == "--create" ]; then
        FLAGS=""
    fi
fi

sync_issues tasks $FLAGS $REPOS
