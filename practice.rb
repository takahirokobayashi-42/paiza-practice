profiles = [
  {:name => "静岡 太郎", :age => 34, :address => "静岡県"},
  {:name => "名古屋 次郎", :age => 25, :address => "愛知県"},
  {:name => "大津 三郎", :age => 19, :address => "滋賀県"},
  {:name => "test", :age => 10, :address => "test"},
  {:name => "ossann", :age => 50, :address => "ossann"},
]
 
def search(profiles, key, query)
  profiles.each do |profile|
    if query =~ profile[key]
      return profile[:age]
    end
  end
end
print "Please input your name: "
STDOUT.flush

# chompは文字列末尾の\nを取り除く
str = Regexp.new(gets.to_s.chomp) 

puts search(profiles, :name, str)