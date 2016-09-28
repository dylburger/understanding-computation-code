# Reduce our expressions
require './expressions.rb'

expression =
    Add.new(
        Multiply.new(Number.new(1), Number.new(2)),
        Multiply.new(Number.new(3), Number.new(4))
    )

puts "Expression: #{expression}"

# As long as we can continue reducing our expression, do so
while expression.reducible? do
    puts "expression.reducible? #{expression.reducible?}"
    puts "Reducing expression..."
    expression = expression.reduce
    puts "#{expression}"
end
