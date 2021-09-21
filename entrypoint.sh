#!/bin/sh -l

echo "Downloading PROS SDK"
sudo python3 -m pip install pros-cli

echo "Building Project"
pros make --project=$1
