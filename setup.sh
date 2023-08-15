#!/usr/bin/env bash

echo 'Setting up shut command...'
echo "alias shut='$(pwd)/shut.sh'" >>~/.bashrc

source ~/.bashrc
