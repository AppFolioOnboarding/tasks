#!/bin/bash

read -rd '' REPOS << EOF
appfolioonboarding/Boying_ImageUploader
appfolioonboarding/Haomin_ImageUploader
appfolioonboarding/Li_Image_Share
appfolioonboarding/ss-vanity
appfolioonboarding/vanilla
EOF

sync_issues tasks -u $REPOS
