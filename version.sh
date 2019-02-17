#!/bin/bash

set -e

# color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
LIGHT_BLUE='\033[1;34m'
NC='\033[0m' # No Color

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

BINARY=WS2801_Arduino_BitBanger
VERSION=`git describe --always --dirty`
DATE=`date -u +%FT%T%z`
echo -e "${GREEN}${BINARY}${NC}: compiled at ${BLUE}${DATE}${NC} with version ${LIGHT_BLUE}${VERSION}${NC}"

echo "// THIS FILE IS AUTO-GENERATED - DO NOT EDIT MANUALLY

// version.hpp
#ifndef VERSION_HPP
#define VERSION_HPP

#define BUILD_DATE    \"${DATE}\"
#define BUILD_VERSION \"${VERSION}\"
#define BUILD_PROGRAM \"${BINARY}\"

#endif
" > ${DIR}/version.hpp
