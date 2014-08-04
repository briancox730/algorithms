#integer multiplication
x = 23
y = 12
def integer_mult(x, y)
  x_split = x.to_s.reverse.chars.map(&:to_i)
  y_split = y.to_s.reverse.chars.map(&:to_i)
  sum = 0
  y_split.each_with_index do |num, index|
    total = []
    x_split.reverse_each do |x|
      total << x * num
    end
    sum += total.join.to_i * (10**index)
  end
  sum
end

puts integer_mult(x, y)
puts "actual"
puts x * y
