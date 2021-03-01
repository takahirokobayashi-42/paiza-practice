def MatrixPath(strArr)
    s_join = strArr
  $flag = false
  r = 0
  return true if decision(strArr)
  strArr.each.with_index do |str,i|
      str.each_char.with_index do |c,j|
          brr = s_join.split(" ")
          if c == "0" 
             brr[i][j] = "1"
             r += 1 if decision(brr) 
          end
      end
  end
  return "not possible" if r == 0
  return r    
end
  # code goes here
  def move(arr, a, b)
    if (arr[a][b]).to_i == 1
        arr[a][b] = "*"
        if a == arr.length - 1 && b == arr[0].length - 1 
            $flag = true
        end
        if a - 1 >= 0 
            move(arr,a - 1,b)
        end
        if a + 1 < arr.length 
            move(arr, a + 1, b)
        end
        if b - 1 >= 0 
            move(arr, a, b - 1)
        end
        if b + 1 < arr[0].length
            move(arr, a, b + 1)
        end
    end
end
def decision(arr)
   $flag = false
   move(arr, 0, 0)
   return $flag
end
   
# keep this function call here    
puts MatrixPath(STDIN.gets)