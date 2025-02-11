BEGIN {
    FS = ",";  # Set field separator to comma
    sum = 0;
    count = 0;
}

NR > 1 {
    age = $7;
    gsub(/[^0-9.]/, "", age);  # Remove non-numeric characters (quotes, spaces, etc.)

    if (age ~ /^[0-9]+(\.[0-9]*)?$/) {  # Ensure it's a valid number
        sum += age;
        count++;
    }
}

END {
    if (count > 0) {
        print "Average Age:", sum / count;
    } else {
        print "No valid age data found.";
    }
}
