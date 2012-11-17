#!/bin/bash
set -e

if [[ -e bitdeli-py ]]; then
    echo "Updating bitdeli-py"
    (cd bitdeli-py; git pull)
else
    git clone git://github.com/bitdeli/bitdeli-py
fi

sphinx-build src html
