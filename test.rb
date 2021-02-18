STDOUT
int=gets.to_i

(1..int).each do |a|
    if a%3==0 && a%5 ==0
    puts "Fizz Buzz"
    elsif a%3==0
    puts "Fizz"
    elsif a%5==0
    puts "Buzz"
    else
    puts a
  end
end
