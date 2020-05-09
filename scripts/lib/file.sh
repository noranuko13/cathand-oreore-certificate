#!/bin/bash

function delete() {
  if [ -e "$1" ]; then
    rm "$1"
  fi
}
