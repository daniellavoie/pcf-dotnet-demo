#!/bin/sh

echo "Deploying : "
echo "  CF_API : $CF_API"
echo "  CF_USER : $CF_USER"
echo "  CF_PASSWORD : $CF_PASSWORD"
echo "  CF_ORG : $CF_ORG"
echo "  CF_SPACE : $CF_SPACE"

cf api $CF_API --skip-ssl-validation

cf auth $CF_USER $CF_PASSWORD

cf target -o $CF_ORG -s $CF_SPACE

ls -l src/publish/*

cf push -f src/publish/manifest.yml