#!/bin/bash

MY_PATH=microservices
REPOSITORY=release-v5.0.3-nvsk-dic

cd "$MY_PATH"

if ! [[ -d spec-ms ]]; then
	git clone https://github.com/dicdiksha/spec-ms.git
	cd "spec-ms"
	git checkout release-v5.0.3-nvsk
	cd ../../
else
	cd "spec-ms"
	git stash
	git checkout release-v5.0.3-nvsk
	git pull
        cd ../../
fi

cd "$MY_PATH"
if ! [[ -d ingestion-ms ]]; then
	git clone https://github.com/dicdiksha/ingestion-ms.git
	cd "ingestion-ms"
	git checkout release-v5.0.3-nvsk
	cd ../../
else
	cd "ingestion-ms"
	git stash
	git checkout release-v5.0.3-nvsk
	git pull
	cd ../../
fi

cd "$MY_PATH"
if ! [[ -d generator-ms ]]; then
	git clone https://github.com/dicdiksha/generator-ms.git
	cd "generator-ms"
	git checkout $REPOSITORY
	cd ../../
else 
	cd "generator-ms"
	git stash
	git checkout $REPOSITORY
	git pull
	cd ../../

fi

cd "$MY_PATH"
if ! [[ -d dashboard-ms ]]; then
        git clone https://github.com/dicdiksha/dashboard-ms.git
        cd "dashboard-ms"
        git checkout $REPOSITORY
        cd ../../
else
        cd "dashboard-ms"
	git stash
        git checkout $REPOSITORY
        git pull
        cd ../../

fi

cd "$MY_PATH"
if ! [[ -d query-builder ]]; then
        git clone https://github.com/dicdiksha/query-builder.git
        cd "query-builder"
        git checkout $REPOSITORY
        cd ../../
else
        cd "query-builder"
	git stash
        git checkout $REPOSITORY
        git pull
        cd ../../

fi
