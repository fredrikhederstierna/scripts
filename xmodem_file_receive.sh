#!/bin/bash

# Receive file using XMODEM with rx command.
# Fredrik Hederstierna 2014

rx -X -c -v my_rx_file.txt < /dev/ttyUSB0 > /dev/ttyUSB0
