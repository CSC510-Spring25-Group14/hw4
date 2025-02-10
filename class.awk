#!/usr/bin/awk -f

BEGIN {
    FS = ","
    class1 = 0
    class2 = 0
    class3 = 0
}

{
    if (NR > 1) { # Skip header
        if ($3 == "1") class1++
        else if ($3 == "2") class2++
        else if ($3 == "3") class3++
    }
}

END {
    print "Class 1: " class1 " passengers"
    print "Class 2: " class2 " passengers"
    print "Class 3: " class3 " passengers"
}