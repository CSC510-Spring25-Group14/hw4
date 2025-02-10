# Find all lines containing "banana":

echo "All lines containing 'banana' \n"
sed -n '/banana/=' sample.txt

# Find lines that do not contain "banana":
echo "\n\nAll lines that do not contain 'banana' \n"
awk '!/banana/ {print NR}' sample.txt

# Use uniq to find unique lines (output should be the above file, with only one line each for apple, banaona, cherry, date)
echo "\n\nUse uniq to find unique lines\n"
sort sample.txt | uniq

# run the command man uniq. Use what you found to extend the uniq comment to count the occurence of each word
echo "\n\nRun the command man uniq. Use what you found to extend the uniq\n"
man uniq
sort sample.txt | uniq -c

# Combine grep and uniq to count occurrences of lines containing "banana":
echo "\n\nCombine grep and uniq to count occurrences of lines containing 'banana'\n"
grep 'banana' sample.txt | uniq -c