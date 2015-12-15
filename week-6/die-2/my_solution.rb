# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.75] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: Number of strings or 1 string chosen at random
# Steps:
=begin
Define initialize with an argument error if array is empty
Define number of sides
Define roll that returns 1 random element using sample
=end


# Initial Solution


class Die
  def initialize(labels)
  	@labels = labels
  	if labels.size < 1
 		raise ArgumentError
  	else
  		@sides = labels.size
  	end
  end

  def sides
  	return @sides
  end

  def roll
  	return @labels.sample
  end
end

# Refactored Solution


class Die
  def initialize(labels)
  	@labels = labels
  	if labels.size < 1
 		raise ArgumentError
  	else
  		@sides = labels.size
  	end
  end

  attr_reader :sides

  def roll
  	return @labels.sample
  end
end


# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
-The main difference is that we were working with an array to get our answers instead of just a number.  No, the logic was the same, just the implementation was a bit different.

What does this exercise teach you about making code that is easily changeable or modifiable?
-That that is a good thing because you can easily alter it to do something different.

What new methods did you learn when working on this challenge, if any?
-.sample  I thought I might have to .shuffle and then just take the first element but .sample does that for you, in a way.

What concepts about classes were you able to solidify in this challenge?
-That you need to define instance variables.  At first I didn't have @labels and my roll wouldn't work with labels, a local variable.