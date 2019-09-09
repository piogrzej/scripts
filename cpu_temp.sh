#!/bin/bash

sensors | grep Package | tr '+??C' ' ' | awk '{printf "|%d",$4}'




