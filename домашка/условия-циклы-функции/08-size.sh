#!/bin/bash
find . -maxdepth 1 -type f -printf '%s %f\n' | sort -n
