require 'benchmark'
require_relative '../lib/mark_sort'

array1 = (1..100).map { rand }
array2 = (1..1000).map { rand }
array3 = (1..10000).map { rand }
array4 = (1..10000000).map { rand }

Benchmark.bmbm do |x|
  x.report('Mark sort, n = 100') { mark_sort(array1) }
  x.report('Mark sort, n = 1000') { mark_sort(array2) }
  x.report('Mark sort, n = 10000') { mark_sort(array3) }
  x.report('Mark sort, n = 10000000') { mark_sort(array4) }

end