#!/bin/sh -e

if [ $# -ne 1 ]; then
    echo "Usage: ropes_heroku.sh APP_NAME"
    exit 1
fi

APPNAME=$1
STAGE="$1s"

heroku create -n $APPNAME
heroku buildpacks:add heroku/nodejs --app $APPNAME
heroku buildpacks:add heroku/ruby --app $APPNAME

sleep 2

heroku create -n $STAGE
heroku buildpacks:add heroku/nodejs --app $STAGE
heroku buildpacks:add heroku/ruby --app $STAGE

sleep 2

heroku pipelines:create $APPNAME --app $APPNAME -s production
heroku pipelines:add $APPNAME --app $STAGE -s staging

exit 0;
