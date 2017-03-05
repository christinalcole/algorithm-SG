# Quicksort pseduocode:
# 1. Divide array into subarary arr[p..r] by choosing a pivot (e.g. arr[r])
# 2. Rearrange arr[p..r] by putting elements <= pivot to its left, elements > pivot to its right
# 3. Let q be the index of wherever the pivot ends up after rearragement
# 4. Recursively sort 'left' subarray, arr[p..q-1] and 'right' subarray, arr[q+1..r] by choosing a new pivot in each subarray, rearrange per 2
# 5. Combine sorted 'left', 'right' subarrays.  pivot (arr[q]) is already correctly positioned between the two subarrays
#
# 6. base case: subarray.length < 2
#
# Partition logic:
# 1. Let pivot be last element of array, arr[r]
# 2. Set 2 tracking indices, q and j, where q will eventually return the index of the pivot, and j will be discarded
# 3. Elements in arr[p..q-1] will be less than or equal to the pivot, "left_arr".  Elements in arr[q..j-1] will be greater than the pivot, "right_arr".  Elements in arr[j-r-1] will be the unknowns, need to be compared to pivot in arr[r] to decided whether to place in left_arr or right_arr.  j always points to the leftmost index of the unknown group.
# 4. Initial: p=q=j.  Compare arr[j] and arr[r].  If arr[j] > arr[r], increment j, which will increase the size of right_arr by 1 element.
# 5. If arr[j] < arr[r], swap arr[j] with arr[q], then increment j and q. This will increase the size of left_arr while also shrinking the size of the unknown group.  p continues to point at index 0.
# 6. When j = r, the unknown group will be empty, so swap arr[r] with arr[q]. This puts the pivot value correctly in-between left_arr and right_arr, even if either array is empty.
# 7. Return the value of q, so that the last pivot position is known within the subarry.
require 'pry'

def partition_array(array)
  pivot=array.last #returns value of last position of array

  p = q = j= array.index(array.first) #sets tracking indices p, q, j to be the first index of the array
  r = array.index(array.last) #sets tracking index r to last index of array

  array.each do |a|
    if j == r
      array[r], array[q] = array[q], array[r]
    elsif a > array[r]
      j += 1
    else
      array[j], array[q] = array[q], array[j]
      q += 1
      j += 1
    end
    #binding.pry
  end

  #binding.pry

  return q
end

quicksort1([4, 10, 1, 18, 2])
