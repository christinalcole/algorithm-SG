## About /sock-sorting

Files in this repo address two approaches to sorting socks, based on a laundry scenario described in *Bad Choices: How Algorithms Can Help You Think Smarter and Live Happier* by Ali Almossawi (https://bookofbadchoices.com/ "Bad Choices"):

1. Method 1: Take a sock from a pile of unmatched socks.  Dig through the pile, find its match, set the paired socks aside.  Repeat. (file: method1.rb; ideas listed in no particular order)

2. Method 2: Take a sock from a pile of unmatched socks.  Set it aside.  Take a new sock from the pile.  If it matches the set-aside sock, pair them, set the paired socks aside.  Otherwise, set the new sock aside.  Repeat.  As unmatched socks are set aside, put the unmatched sock with other unmatched socks that are the same color, size, etc. (file: method2.rb; ideas listed in no particular order)

For coding purposes, the following array will represent a pile of unmatched socks:
[11,21,45,31,34,31,45,34,11,21].

Matched socks are represented by an array of arrays:
[[11,11], [21,21], [45,45], [31,31], [34,34]]
