#!/bin/bash
set -e

echo "Testing if setup.py is installed in editable mode"
ls /opt/conda/lib/python3.7/site-packages/setup.py.egg-link

./wait-for-it.sh $1:$2 -t $3 -- \
    echo "Running pytest as $USER with uid $UID" && \
    pytest -vv "$(pwd)/docker"
