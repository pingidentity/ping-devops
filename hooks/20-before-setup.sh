#!/usr/bin/env sh
echo "This happens only on the first start of the container, immediately before the server is set up"

#
# This hook could be used to retrieve certificates and/or credentials from Vault for example
# It's also a good place to retrieve extensions dynamically such that they do not need to be committed in the server profile
