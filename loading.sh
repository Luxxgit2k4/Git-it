#!/bin/bash
loading=( '|' '/' '-' '\')
load() {
while [ 1 ]
do
  for i in "${loading[@]}"
  do
   echo -ne "\r$i"
   sleep 0.2
  done
done
}
load
