require 'pry'

class Array
  def quicksort
    # Check if array is empty: if yes, return the empty array.  Req'd step for error handling and so that quicksort knows when to stop
    return [] if empty?
    #binding.pry
    # Picks a random element to be the pivot.  #delete_at removes the element at the specified index and returns it
    pivot = delete_at(rand(size))

    # #partition returns two arrays, one for which the block condition is true (pivot > index value) and one for which the block condition is false (&pivot.method(:>))
    left, right = partition(&pivot.method(:>))

    # Recursively sort left and right arrays, then (due to splat operator) return the flattened array of left (sorted), pivot, and right (sorted)
    return *left.quicksort, pivot, *right.quicksort
  end
end

#source: rails.devcamp.com/ruby-programming/ruby-algorithms/how-to-implement-the-quick-sort-algorithm-in-ruby (accessed 03.04.17)

#Comment out next 3 lines, prior to benchmark testing, for improved readability in results
arr = [4, 10, 1, 18, 2]
arr2 = arr.quicksort
print arr2
puts
