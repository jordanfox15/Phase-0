# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Tyler McKenzie]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?an array of numbers
# What is the output? (i.e. What should the code return?)an array of the numbers that appear most frequently
# What are the steps needed to solve the problem?
=begin
iterate through the array and find the frequency of each number
create a hash with the key as the number and the frequency as the value
Find the largest frequency
return an array of all keys with that frequency
=end


# 1. Initial Solution
def mode(array)
  frequency = Hash.new(0)
  new_array = []
  array.each do |int| 
    frequency[int] += 1
  end
  frequency = frequency.sort_by{|x, y| y}
  frequency.each do |x, y|
    if x.is_a? Numeric
      if y == frequency.last.last
        new_array << x
      end
    else 
      if y == frequency.last.last
        new_array << x.to_s
      end
    end
  end
  return new_array.sort
end


# 3. Refactored Solution
def mode(array)
  frequency = Hash.new(0)
  new_array = []
  array.each do |int| 
    frequency[int] += 1
  end
  frequency.each do |x, y|
    if x.is_a? Numeric
      if y == frequency.values.max
        new_array << x
      end
    else 
      if y == frequency.values.max
        new_array << x.to_s
      end
    end
  end
  return new_array.sort
end




# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?
-We used a hash so we could store the input with how many times each piece occurs in the array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair.
-No, I don't think so.  We were pretty successful both times.

What issues/successes did you run into when translating your pseudocode to code?
-The first couple of steps were quite easy to implement, it was the last 1 or 2 that we had to figure out.

What methods did you use to iterate through the content?  Did you find any good ones when you were refactoring?  Were they difficult to implement?
-We really only used .each to iterate.  We tried find_all to refactor but found it basically did the same thing and wasn't any easier to use.