#!/bin/bash
multiply() {
    echo $(($1 * $2))
}
export PS4='+ ${BASH_SOURCE##*/}:${LINENO}:${FUNCNAME[0]}: '
set -x
multiply 6 7
