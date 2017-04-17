require 'benchmark'

require_relative './quicksort/quicksort1.rb'
require_relative './quicksort/quicksort2.rb'
require_relative './mergesort/mergesort.rb'
require_relative './mergesort/mergesort2.rb'

arr = [4, 10, 1, 18, 2]
# arr = Array.new(20) {rand(1..100)}  #second example, to show limitations v. native sort
print arr
print "\n"

Benchmark.bm do |bm|
  bm.report('quicksort1'){inplace_quicksort(arr, 0, arr.length-1)} #Comment out this line to test larger arrays
  bm.report('quicksort2'){arr.quicksort}
  bm.report('mergesort'){mergesort(arr)}
  bm.report('mergesort2'){arr.mergesort}
  bm.report('native sort'){arr.sort}
end
