#!/bin/bash
ls /nonexistent
bad=$?
echo "Код ls /nonexistent: $bad"
ls / >/dev/null
good=$?
echo "Код ls /: $good"
