#!/bin/sh -l

echo "Downloading PROS SDK"
# Get VEX SDK and put it in ~/sdk
python3 -m pip install --user pros-cli

echo "Building Project"
# Now make the makefile in the set path
pros make --project=$1