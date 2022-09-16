#!/bin/bash

lower='slartibartfast'
upper='SLARTIBARTFAST'
mixed='Slartibartfast'

if [ ! -z $1 ]
then
  basestring=${1,,}
  upstring=${basestring^^}
  mixedstring=${basestring^}

  find . -type f -not -path "./.git/*" -exec sed -i "s/${lower}/${basestring}/g" {} \;
  find . -type f -not -path "./.git/*" -exec sed -i "s/${upper}/${upstring}/g" {} \;
  find . -type f -not -path "./.git/*" -exec sed -i "s/${mixed}/${mixedstring}/g" {} \;
fi
