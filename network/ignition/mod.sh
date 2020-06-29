#!/usr/bin/bash
PWD=$(pwd)

INPUT="${PWD}/../bootstrap.ign"
OUTPUT=""

jq ".networkd.units" ${INPUT} ${PWD}/bond.json ${OUTPUT}

