#!/bin/sh

echo "Cleaning environment"

cf api $CF_API --skip-ssl-validation

cf auth $CF_USER $CF_PASSWORD

cf target -o $CF_ORG -s $CF_SPACE

cf delete -f -r FortunesLegacyService
cf delete -f -r FortunesLegacyUI
cf delete -f -r FortunesService
cf delete -f -r FortunesUI