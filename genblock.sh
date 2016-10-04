#!/bin/bash

# init variables
bd='block-domains.txt'
bi='block-ip.txt'

# use tempfiles to ensure we don't exceed the maximum line length

tf1=$(mktemp)
tf2=$(mktemp)
tf3=$(mktemp)

cat "$bd" > "$tf"
> "$bi"

# recursively resolve all hosts and children from up to 5 levels deep
for i in {1..5} ; do
  # resolve hosts in file $tf1 and store in file $tf2
  # use dig with shortened output, get results from google public dns
  # ignore lines commented out with '#'.
  sed -e 's/#.*//' "$tf1" | 
    xargs -d'\n' dig @8.8.8.8 +short 2>/dev/null > "$tf2"

  # append current results to "$tf3"
  cat "$tf2" >> "$tf3"
  # replace "$tf1" with current "$tf2"
  cat "$tf2"  > "$tf1"
done

# strip trailing periods and any hostnames from $tf3 array, 
# sort/dedupe, and store in "$bi"
#
# use GNU sort's -V (--version-sort), which works nicely
# for IP addresses.
sed -e 's/\.$//g' "$tf3" |
  grep -v '[a-z]$' |
  sort -V -u > "$bi"

# alternatively, without a recent GNU sort, use:
#  sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n -u > "$bi"

rm -f "$tf1" "$tf2" "$tf3"
