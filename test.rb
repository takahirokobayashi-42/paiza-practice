arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
arr2 = arr.map{|x|
  next if x.odd?
  x
}
puts arr2.join
puts [1,2,3].reduce(0) { |accumulator, i| accumulator + i }