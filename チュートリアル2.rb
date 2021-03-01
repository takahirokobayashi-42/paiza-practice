def PalindromicSubstring(str)
  r_str = str.reverse
  c_lists = {}
  index = 0
  ans = []
  str.each_char do |c|
    c_lists[c] ||= []
    c_lists[c] << index
    c_lists[c].each do |i|
      if str[i..index] == r_str[(-index-1)..(-i-1)] && ans.length < index-i + 1
        if ans.length > 2
          ans = str[i..index]
        else
          ans = "none"
        end
  
        break
      end
    end
    index += 1
  end
  return ans
  end
  
  # keep this function call here 
  puts PalindromicSubstring(STDIN.gets)