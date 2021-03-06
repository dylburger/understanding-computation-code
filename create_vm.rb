require './expressions.rb'

# Create a virtual machine that simplifies expressions
Machine.new(
    Add.new(
        Multiply.new(Number.new(1), Number.new(2)),
        Multiply.new(Number.new(3), Number.new(4))
    )
).run

Machine.new(
    LessThan.new(Number.new(5), Add.new(Number.new(2), Number.new(2)))
).run
