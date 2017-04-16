# MergeSort pseudocode:
# 1. Divide the array at q, where q = (p+r)/2
# 2. Assign array[p..q] to left_half, array[q+1..r] to right_half
# 3. For each half: if p≠r, divide again, reassign each half.
# 4. Repeat until p=r => This represents base case, or a by-default sorted subarray.
# 5. Merge sorted arrays back together, to recreate a sorted array[p..r]
#
# basecase: subarray.length < 2

require 'pry'

def mergesort(array)
  if array.length < 2 # If the array only has 0 or 1 element, there's nothing to sort
    array
  else
    q = ((array.length)/2).floor # Floor rounds down to closest integer
    # binding.pry
    left_half = mergesort(array[0..(q-1)])  # Subtracting 1 here, because array indexing starts at 0
    right_half = mergesort(array[q..(array.length)])

    merge(left_half, right_half)
  end
end

def merge(left_half, right_half)
  # binding.pry
  if left_half.empty?  # If all left elements are already merged in, go to the right array
    right_half
  elsif right_half.empty? # If all right elements are already merged in, go to left array
    left_half
  elsif left_half.first < right_half.first # If the left element is smaller than the right one, put it to the result first
    [left_half.first] + merge(left_half[1..left_half.length], right_half)
  else # Otherwise, put the first element in the right array to the result, then Repeat
    [right_half.first] + merge(left_half, right_half[1..right_half.length])
  end
end

arr = Array.new(7){rand(1..100)}
print arr
print "\n"
print mergesort(arr)
puts
