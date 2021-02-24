a=Array.new
a[0]=1
a[1]=0
a[2]=5
n=3
while(n < 28)
  a[n] = (a[n-3]+a[n-2]+a[n-1])
  puts a[n]
  n+=1
end
puts a[27]