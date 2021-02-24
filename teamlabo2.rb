ans = []
i = 1
num=1234567890
while i <= 30000000 do
  if num % i == 0
    ans << i
  end 
  i += 1
end
puts ans.sum