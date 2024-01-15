#!/bin/sh

. ./versions.inc.sh

#----------------------------------------
# Install package dependecies
#----------------------------------------
${ECHO} ">>> Installing packages for NextSpace frameworks build"
sudo apt-get install -y ${FRAMEWORKS_BUILD_DEPS}
sudo apt-get install -y ${FRAMEWORKS_RUN_DEPS}

#----------------------------------------
# Download
#----------------------------------------
SOURCES_DIR=${PROJECT_DIR}/Frameworks
BUILD_DIR=${BUILD_ROOT}/Frameworks

if [ -d ${BUILD_DIR} ]; then
  rm -rf ${BUILD_DIR}
fi
cp -R ${SOURCES_DIR} ${BUILD_ROOT}

#----------------------------------------
# Build
#----------------------------------------
. /Developer/Makefiles/GNUstep.sh
cd ${BUILD_DIR}

$MAKE_CMD clean
$MAKE_CMD
sudo -E $MAKE_CMD install
sudo ldconfig