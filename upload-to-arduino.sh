#!/bin/bash

set -e

BASE_DIR="."

PROGRAMM_NAME="WS2801_Arduino_BitBanger"
ARDUINO_TYPE="arduino:avr:nano"
DEVICE="/dev/ttyUSB0"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

BASE_DIR="${DIR}"

source ${BASE_DIR}/scripts/upload-base.sh $PROGRAMM_NAME $ARDUINO_TYPE $DEVICE $DIR
