#!/bin/bash

# Receive file using YMODEM with rb command.
# Fredrik Hederstierna 2014

rb -y -v < /dev/ttyUSB0 > /dev/ttyUSB0
