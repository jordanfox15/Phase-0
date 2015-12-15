# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [.75] hours on this challenge.

# Pseudocode

# Input: an integer
# Output: how your guess correlates to the integer and if the game is solved yet
# Steps:
=begin
Define initialize with integer input
Define method to guess and check the guess against the integer
Define method to check if last guess was correct
=end


# Initial Solution


class GuessingGame
  def initialize(answer)
  	@solved = false
  	@answer = answer
  end

  def guess(guess)
  	if guess < @answer
  		@solved = false
  		return :low
  	elsif guess > @answer
  		@solved = false
  		return :high
  	else
  		@solved = true
  		return :correct
  	end
  end

  def solved?
  	return @solved
  end
end


# Refactored Solution






# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
-They create elements to use only inside of a specific set of circumstances.  In this example the class guessinggame represents a real game of guess the number I am thinking of.

When should you use instance variables? What do they do for you?
-You should use instance variables anytime you want to pass information from 1 method to another because they exist in the class, not the method in particular so it can be passed in and out of any method in the class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
-You use flow control to if you want to take a specific action based on circumstances.  In this example depending on what your guess was you wanted to return different things.  No, the program was pretty simple.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
-Using symbols is faster and they take less memory to use then strings.

=end