#integer multiplication 3rd grade implementation
x = 1234123
y = 12312
def integer_mult(x, y)
  x_split = x.to_s.reverse.chars.map(&:to_i)
  y_split = y.to_s.reverse.chars.map(&:to_i)
  sum = 0
  y_split.each_with_index do |num, index|
    total = []
    overflow = 0
    x_split.each do |x|
      if x_split.index(x) == x_split.size - 1
        this_operation = (x * num) + overflow
        total.unshift(this_operation)
      else
        this_operation = (x * num) + overflow
        overflow = this_operation / 10
        total.unshift(this_operation % 10)
      end
    end
    sum += total.join.to_i * (10**index)
  end
  sum
end

puts integer_mult(x, y)
puts "actual"
puts x * y
