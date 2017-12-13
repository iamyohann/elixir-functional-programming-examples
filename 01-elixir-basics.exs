# Single line comments

# There are no
# multi line commments

# Simple hello wold
IO.puts "Hello world"

# Types

# - Integer
IO.puts 1

# - Floats
IO.puts 3.5

# - Floats
IO.puts 3.5

# - Boolean
IO.puts true
IO.puts false

# - Atoms / Symbols
IO.puts :foo
IO.puts :bar

# - Strings
IO.puts "Hello world"

# - Lists
l = [1, 2, 3]

# - Tuples (contiguous in memory)
t = {1, 2, 3}

# Basic arithmetic
IO.puts 1 + 2 # add
IO.puts 5 * 5 # multiply
IO.puts 10 / 2 # divide (float returned)

IO.puts(div(10, 2)) # Integer division
IO.puts rem 10, 3 # remainder (optional parantheses when invoking named functions)

IO.puts round(3.58) # round
IO.puts trunc(3.58) # get integer part

# Booleans
IO.puts true == false

# Type checking
IO.puts is_boolean(false)
IO.puts is_boolean(1)
IO.puts is_float(20.33)

# Atoms (symbols)
IO.puts :myatom # atoms start with ':'

IO.puts is_atom(true) # 'true' & 'false' are also atoms

# String functions
IO.puts String.length "Foobar"
IO.puts String.upcase "uppercase"
IO.puts String.downcase "LOWERCASE"

# Anonymous functions
add = fn a, b -> a + b end

IO.puts add.(1, 2)


# Composition
a = fn x -> x + 2 end
b = fn x -> x * 3 end
c = fn a, b, x -> b.(a.(x)) end

# b ∘ a (b after a)
IO.puts b.(a.(2)) == c.(a, b, 2)

# Identity functions
i = fn f -> f end

# Identity of A
iA = i.(a)

IO.puts a.(5) == iA.(5)

# Identity of C
iC = i.(c)

IO.puts c.(a, b, 2) == iC.(a, b, 2)