#!/bin/bash

run_app(){
streamlit run --server.port 8888 --server.headless True --server.runOnSave True --server.enableCORS False "$appname"
}

if [ ! -f /app/*.py ] ; then
    echo "There are no .py scripts in /app so cannot run any"

    if [ "$GITHUB_REPO" = "" ] ; then
        echo "Github repo is not set. Use GITHUB_REPO ENV variable to define it and restart the container"
    else 
        git clone $GITHUB_REPO .
    
        if test -f "/app/requirements.txt" ; then 
            echo "requirements exists, installing dependencies"
            pip install -r /app/requirements.txt
        fi
        
        export appname=`ls /app/*.py | head -1`
        echo "Running $appname"
        run_app
    fi

else
    export appname=`ls /app/*.py | head -1`
    echo "Running $appname"
    run_app
fi