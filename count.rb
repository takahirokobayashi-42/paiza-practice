STDOUT
input_lines = gets.to_s.chomp
puts input_lines
count = input_lines.length

(count+2).times{
    print "#"
  }
puts "\n "+input_lines

(count+2).times{
  print "#"
}