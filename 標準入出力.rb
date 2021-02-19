input_number = gets.to_i
a = Array.new(Array.new)
b=0
input_number.times do
    a[b]=gets.split(" ")
    a[b][0]=a[b][0]+" "
    a[b][1] = ((a[b][1]).to_i+1).to_s + "\n"
    print a[b].join
    b += 1
end