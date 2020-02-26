#!/bin/bash
########################################################################################################################
#
# This script is used to Install a Ping Identity DevOps tool and bash aliases
#
# ------------
# Installs ping-devops              into     .
# Installs bash_profile.ping-devops into     .
# ------------

INSTALL_DIR=$(pwd)

if [ -f $INSTALL_DIR/ping-devops ]; then
  echo "ping-devops already installed in ${INSTALL_DIR}"
  echo "Please remove or move to reinstall"
  exit 1
fi

TMP_DIR=`mktemp -d`
if [[ ! "$TMP_DIR" || ! -d "$TMP_DIR" ]]; then
  echo "Could not create temp dir."
  exit 1
fi

function cleanup {      
  rm -rf "$TMP_DIR"
}

trap cleanup EXIT

pushd $TMP_DIR >& /dev/null

curl -s https://raw.githubusercontent.com/pingidentity/homebrew-devops/master/Formula/ping-devops.rb |\
  grep url |\
  cut -d '"' -f 2 |\
  xargs curl -s -O -L

tar xzf ./*.tar.gz

cd ping-devops-*

cp ping-devops                  $INSTALL_DIR/.
cp etc/bash_profile.ping-devops $INSTALL_DIR/.

echo "
################################################################################
                     Welcome to Ping Identity DevOps!

  You have just installed:

    ${INSTALL_DIR}/ping-devops
    ${INSTALL_DIR}/base_profile.ping-devops
  
  It is recommended to copy your 'ping-devops' to a location in your PATH and
  to source the 'base_profile.ping-devops' in your shell to get all the 
  goodness from Ping Idnetity DevOps!

  For more information please visit us at:

     http://devops.pingidentity.com

################################################################################
"
