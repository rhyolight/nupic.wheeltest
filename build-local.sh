#!/bin/sh

echo "Uninstalling any existing NuPIC installations..."
pip uninstall nupic -y

NUPIC_SHA=`cat nupic_sha.txt`
echo "Using NuPIC SHA: ${NUPIC_SHA}"

NUPIC_VERSION=`ls ./wheelhouse | grep nupic | cut -d'-' -f2`
echo "Installing NuPIC ${NUPIC_VERSION} with wheels..."
pip install --use-wheel --find-links=wheelhouse --user nupic==${NUPIC_VERSION}