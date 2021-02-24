a = 0
num=1
while(num<=5000)
  if num%3==0
    a += num
  end
  if num.to_s.include?("3")
    a += num.to_i
  end
  num +=1
end
puts a