# Pad an Array

# I worked on this challenge [with: Kevin Huang]

# I spent [1.75] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? given array, array size, possible value to pad
# What is the output? (i.e. What should the code return?)
#the given array in the min size
# What are the steps needed to solve the problem?
# Compare size of given array with min_size
# if array >= min_size, return array
# else pad array with given value


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    count = min_size - array.length
    count.times do 
      array.push(value)
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  temp_array = array.clone
  if temp_array.length >= min_size
    return temp_array
  else
    count = min_size - temp_array.length
    count.times do 
      temp_array.push(value)
    end
  end
  return temp_array
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    count = min_size - array.length
    count.times do 
      array.push(value)
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  temp_array = array.clone
  pad!(temp_array, min_size, value)
end

=begin
4. Reflection

Were you successful in breaking the problem down into small steps?
-I would say yes, although there weren't many steps to begin with.

Once you had written your pseudocode, were you able to easily translate it into code?  What difficulties and successes did you have?
-Yes, the steps were simple and so was the code to write.

Was your initial solution successful at passing the tests?  If so, why do you think that is?  If not, what were the errors you encountered and what did you do to resolve them?
-First run-through did not pass because we were altering the original array in both methods.  We solved this by using the .clone method.

When you refactored, did you find any existing methods in Ruby to clean up your code?
-We did, however we did not use it because it turned out to be just as complicated a solution only less readable.

How readable is your solution?  Did you and your pair choose descriptive variable names?
-I think it is pretty readable.  Yes we did.

What is the difference between destructive and non-destructive methods in your own words.
-Destructive methods change the original information passed to it, while non-destructive methods return altered information without changing the original.
=end