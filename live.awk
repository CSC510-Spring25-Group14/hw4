#!/usr/bin/awk -f

BEGIN {
    FS = ","
    print "Class,Survived,Count,Percentage"
}

NR > 1 {
    class[$3 "," $2]++
    total[$3]++
}

END {
    for (key in class) {
        split(key, arr, ",")
        pclass = arr[1]
        survived = arr[2]
        count = class[key]
        percentage = (count / total[pclass]) * 100
        printf "%s,%s,%d,%.2f\n", pclass, survived, count, percentage
    }
}
