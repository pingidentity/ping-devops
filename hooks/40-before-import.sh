#!/usr/bin/env sh
echo "This happens only on the first start of the container, before the data is imported in the instance database"

# Possible uses for this hook:
#   - generate data with a provided make-ldif template which would be useful for benchmark runs
#     For example:
#       /opt/out/instance/bin/make-ldif \
#           --define base:${USER_BASE_DN} \
#           --define numusers:1000000 \
#           --numThreads 4 \
#           --templateFile /opt/in/benchmark.template \
#           --ldifFile /opt/in/data/00-userRoot-benchmark.ldif
#