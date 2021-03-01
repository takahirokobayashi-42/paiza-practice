def TrappingWater(arr)
  total_water = 0
  arr = arr.map(&:to_i)
  lmax = []
  rmax = []
  arr.each_index do |i|
    if i == 0
      lmax << arr[i]
      rmax << arr[-i-1]
    else
      lmax.push([lmax[i-1], arr[i]].max)
      rmax.unshift([rmax[-i], arr[-i-1]].max)
    end
  end
    arr.each_index do |i|
      total_water+= ([rmax[i], lmax[i]].min - arr[i])
  end
  return total_water
end

# keep this function call here 
puts TrappingWater(STDIN.gets)