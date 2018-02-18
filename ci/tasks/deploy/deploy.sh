#!/bin/sh

unzip blobs/publish.zip -d blobs

cf api $CF_API --skip-ssl-validation

cf auth $CF_USER $CF_PASSWORD

cf create-space $CF_SPACE -o $CF_ORG

cf target -o $CF_ORG -s $CF_SPACE

cf push -f blobs/manifest.yml