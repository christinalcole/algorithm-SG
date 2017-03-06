# About Algorithm-SG
This repo contains code used for a Learn.co study group on QuickSort algorithm and its implementation in Ruby.

### About quicksort1.rb
The code in quicksort1.rb is a sample implementation of the quicksort algorithm.  The `inplace_quicksort` method is defined to accept arguments of an array, left index, and right index.  The indices effectivley define the length of the array to be sorted.  The `partition_array` method accepts an array as an argument, and uses a divide-and-conquer paradigm to reorganize the passed array into two groups, based on a pivot value.  Values greater than the pivot are grouped to the right of the pivot's index, and values less than the pivot are grouped to the left.

### About quicksort2.rb
The code in quicksort2.rb defines `quicksort` as an Array class method, so that the method may be called directly on an Array object.  This implementation of quicksort uses native Ruby methods in the Array and Enumerable modules.
