# Is it possible to implement mergesort at the class level?

require 'pry'

class Array
  def mergesort
    return self if self.length < 2

    q = self.length/2

    left = (self[0, q]).mergesort  # These two lines will give left, right halves, based on #slice
    right = (self[q, (self.length-q)]).mergesort

    return merge(left, right)
  end

  def merge(left, right)
    sorted_array = Array.new  # This will be the final sorted array[p..r]

    while !left.empty? || !right.empty?  # So long as subarray from left or right halves are not empty...
      if left.length > 0 && right.length > 0  # Compare the first elements in each half.  Whichever is less, shovel to the sorted array
        if left[0] <= right[0]
          sorted_array << left.slice!(0)  # Slice!, to remove shoveled element from later consideration
        else
          sorted_array << right.slice!(0)
        end
      elsif left.length > 0 # Once one subarray is completely added to the sorted array, append the rest of the reminaing array, in order
        sorted_array.concat(left.slice!(0..(left.length - 1)))
      else
        sorted_array.concat(right.slice!(0..(right.length-1)))
      end
    end

    return sorted_array
  end

end

arr = [4, 3, 1, 5, 10]
print arr.mergesort
print "\n"
