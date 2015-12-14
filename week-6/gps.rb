# Your Names
# 1) Jordan Fox
# 2)David Louie

# We spent [1.25] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_servings)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if menu.has_key?(item_to_make)
    serving_size = menu[item_to_make]
    remaining_ingredients = num_of_servings - serving_size
  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  if remaining_ingredients >= 7
    return "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}, you can make #{(remaining_ingredients / menu["pie"])} pie, #{(remaining_ingredients / menu["cake"])} cake or #{(remaining_ingredients / menu["cookie"])} cookies."
  elsif remaining_ingredients >= 5
    return "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}, you can make #{(remaining_ingredients / menu["cake"])} cake or #{(remaining_ingredients / menu["cookie"])} cookies."
  elsif remaining_ingredients >= 1
    return "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}, you can make #{(remaining_ingredients / menu["cookie"])} cookies."
  else
    return "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin

What did you learn about making code readable by working on this challenge?
-Don't make things more complicated then they need to be and name your variables properly.

Did you learn any new methods? What did you learn about them?
-I learned has_key?.  I would have assumed there was a method to do this but I have not used it before.

What did you learn about accessing data in hashes?
-Besides the new method to do so, not much.

What concepts were solidified when working through this challenge?
-I have a better understanding of what to look for when refactoring.

=end