# 自分の得意な言語で
# Let's チャレンジ！！
parent = gets.split.map(&:to_i)
inputnum = gets.to_i
a = 0
b = 0
child = Array.new
inputnum.times do
    child[a] = gets.split(" ").map(&:to_i)
    a += 1
end
a = 0
inputnum.times do
    b=0
    if parent[0]==child[a][b]
        b += 1
        if parent[1]>child[a][b]
            puts "Low"
        else
            puts "High"
        end
    elsif parent[0] > child[a][b]
        puts "High"
        b += 1
    else
        puts "Low"
        b += 1
    end
    a += 1
end
