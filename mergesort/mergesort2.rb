# Is it possible to implement mergesort at the class level?

require 'pry'

class Array
  def mergesort
    return [] if empty?

    q = self.length/2

    left = (self[0, q])  # These two lines will give left, right halves, based on #slice
    right = (self[q, (self.length-q)])

    # Stumped with how to implement the merge...
    binding.pry
  end
end

arr = [4, 3, 1, 5, 10]
print arr.mergesort
