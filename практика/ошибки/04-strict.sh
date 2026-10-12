#!/bin/bash
set -euo pipefail
trap 'echo "Переменная не задана"' ERR
# Незаданная переменная завершает подоболочку с ошибкой.
# Этот ненулевой код ловит trap ERR.
( echo "$UNDEFINED_VAR" )
