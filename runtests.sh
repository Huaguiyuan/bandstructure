!/bin/bash

set -e

export PYTHONPATH="."

python3 -m pytest \
        --color yes \
        --cov-config tests/.coveragerc \
        --cov-report html \
        --cov bandstructure \
        --cov tests \
        tests

rm .coverage*
rm -R .pytest_cache
