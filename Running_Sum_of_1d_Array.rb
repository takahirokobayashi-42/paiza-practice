def running_sum(nums)
  a = 0
  test = Array.new
  test[0]=0
  nums.each do |number|
    if a > 0
      test[a] = test[a-1]+number
    else
      test[a] = number
      a+=1
    end
  end
  return test
end

puts running_sum(gets.split(",").map(&:to_i))