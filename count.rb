input_lines = STDIN.gets.to_s.chomp
count = input_lines.length

(count+2).times{
    print "#"
  }
puts "\n "+input_lines

(count+2).times{
  print "#"
}