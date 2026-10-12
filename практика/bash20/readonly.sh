#!/bin/bash
readonly var="not change"
echo "readonly var=$var"
var="other"
normal=5
echo "До unset: $normal"
unset normal
echo "После unset: [$normal]"
