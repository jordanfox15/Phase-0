# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: the number of sides or a result of rolling the die
# Steps:
=begin
define initialize with the number of sides
define method sides to return the number of sides
define method roll which return a random number between 1 and the number of sides
write an argument error for if number of sides is less than 1
=end


# 1. Initial Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError
  	else
  		@sides = sides
  	end
  end

  def sides
    return @sides
  end

  def roll
  	return rand(@sides) + 1
  end
end


# 3. Refactored Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError
  	else
  		@sides = sides
  	end
  end

  attr_reader :sides

  def roll
  	return rand(@sides) + 1
  end
end


# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
-It is an error that occurs when there is something wrong with the arguments that are passed to a method.  You would use one to keep the program from breaking because of wrong input.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
-raise and attr are something I have never used before.  All I did was follow syntax examples.  Not very challenging.

What is a Ruby class?
-A class is a group of objects that all share the same attributes.

Why would you use a Ruby class?
-So you can create and use objects that all share the properties like method calls.

What is the difference between a local variable and an instance variable?
-A local variable is used inside a method and it ceases to exist when the method is exited.  An instance variable is used inside a class and keeps its value even when passed around different methods.

Where can an instance variable be used?
-In a class.
=end