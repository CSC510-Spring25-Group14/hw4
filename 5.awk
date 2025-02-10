#!/usr/bin/awk -f

BEGIN {
    columns = 0
}

{
    print $0
    columns++
    if (columns == 5) {
        exit
    }
}