#!/bin/bash

for c in {A..Z}; do
	exstr='echo ${c}:    "${!'$c'*} ${!'$(echo $c | tr [:upper:] [:lower:])'}"'
	eval '$exstr'

do
	
