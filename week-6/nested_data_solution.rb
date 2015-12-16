# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 2
# ============================================================
#p array[1][2][0]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ===========================================================
# p hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |x|
  if x.kind_of?(Array)
    x.map! do |y|
      y += 5
    end
  else
    x += 5
  end
end
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

=begin
Reflection

What are some general rules you can apply to nested arrays?
-They work just like 1 dimensional arrays with an extra layer of access to the inner arrays

What are some ways you can iterate over nested arrays?
-The same ways you iterate over 1 dimensional arrays, except you have to understand that to access the elements of the inner arrays you need to add another layer of iteration.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
-We used .map! which we were already familiar with.  We did this because map! will alter every element in the array how we tell it to and also it acts as a .each when we need to access the inner arrays. 