require './expressions.rb'

# Create a virtual machine that simplifies expressions,
# using variables within our environment
Machine.new(
    Add.new(
        Variable.new(:x), 
        Variable.new(:y)),
    { x: Number.new(3), y: Number.new(4) }
).run

Machine.new(
    Multiply.new(
        Add.new(
            Variable.new(:x), 
            Variable.new(:y)),
        Add.new(
            Variable.new(:t),
            Variable.new(:u))),
    { x: Number.new(3), 
      y: Number.new(4),
      t: Number.new(1),
      u: Number.new(4)}
).run
