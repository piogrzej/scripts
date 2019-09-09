#!/bin/bash

vcore=$(sensors it8792-isa-0a60 | grep in0 | awk '{printf "@%sV",$2}')
echo "${vcore//+}"


