# About Algorithm-SG
This repo contains code used for a Learn.co study group on various algorithms and implementation in Ruby.

### About quicksort
QuickSort study group, 6 Mar 2017:

###### About quicksort1.rb
The code in quicksort1.rb is a sample implementation of the quicksort algorithm.  The `inplace_quicksort` method is defined to accept arguments of an array, left index, and right index.  The indices effectively define the length of the array to be sorted.  The `partition_array` method accepts an array as an argument, and uses a divide-and-conquer paradigm to reorganize the passed array into two groups, based on a pivot value.  Values greater than the pivot are grouped to the right of the pivot's index, and values less than the pivot are grouped to the left.

###### About quicksort2.rb
The code in quicksort2.rb defines `quicksort` as an Array class method, so that the method may be called directly on an Array object.  This implementation of quicksort uses native Ruby methods in the Array and Enumerable modules.


### About mergesort
Merge sort study group, 17 April 2017:

###### About mergesort.rb
The code in mergesort.rb is a sample implementation of the mergesort algorithm.  The `mergesort` method accepts an array as an argument, and recursively divides the array in half, until the resulting subarrays have 1 or fewer elements.  The `merge` method accepts the left- and right-half sorted subarrays, and merges the subarrays into a sorted combined array.

###### About mergesort2.rb
This code is an attempt to implement `mergesort` as an Array class method.
