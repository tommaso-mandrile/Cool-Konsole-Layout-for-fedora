#!/bin/bash

trap "printf '\033[?25h'; setterm -cursor on" EXIT INT TERM

export TERM=xterm-mono
export CACA_DRIVER=ncurses

setterm -cursor off

printf "\033[?25l"

/usr/bin/cacafire
