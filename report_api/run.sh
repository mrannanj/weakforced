#!/usr/bin/env bash
set -e

if [ ! -d .venv ]; then
	python3 -m venv .venv
fi
. .venv/bin/activate
python3 -V
pip3 install --upgrade pip
pip3 install -r requirements.txt

set -e
set -x
exec ./runreport.py "$@"
