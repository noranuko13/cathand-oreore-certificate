#!/bin/bash

prefix="----- "

function msg() {
  echo -e "\e[38;5;$1m$2\e[0m"
}
function msg_default() {
  msg "240" "$1"
}
function msg_info() {
  msg "14" "$prefix$1"
}
function msg_success() {
  msg "22" "$prefix$1"
}
