#!/bin/bash
count_files() {
    find "$1" -maxdepth 1 -type f | wc -l
}

count_files "$1"
