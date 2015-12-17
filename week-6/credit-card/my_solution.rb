# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: David Louie].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: 16 digit integer
# Output: True or False
# Steps:
=begin
check if its 16 digit, if not give argument error
convert int to string
iterate over each char and push to array and turn back into int
iterate backwards over array
each odd index - double the integer
iterate over array - if element > 9
turn to string, each_char - push to array
delete current element
add up array
check if divisible by 10
=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(number)
    @cred_array = Array.new
    if number.to_s.size != 16
      raise ArgumentError
    else
      number.to_s.each_char do |digit|
        @cred_array.push(digit.to_i)
      end
    end
  end
    
    def check_card
      @cred_array.reverse_each do |digit|
        if @cred_array.index(digit).even?
          @cred_array.push(digit *2)
          @cred_array.delete_at(@cred_array.index(digit))
        end
      end
      @cred_array.each do |digit|
        if digit > 9
          digit.to_s.each_char do |split|
            @cred_array.push(split.to_i)
          end
          @cred_array.delete_at(@cred_array.index(digit))
        end
      end
      
      if @cred_array.reduce(:+) % 10 == 0
        return true
      else
        return false
      end
    end
end


# Refactored Solution

class CreditCard

  def initialize(number)
    @cred_array = Array.new
    if number.to_s.size != 16
      raise ArgumentError
    else
      number.to_s.each_char do |digit|
        @cred_array.push(digit.to_i)
      end
    end
  end
    
    def check_card
      count = 14
      while count >= 0
        @cred_array[count] *= 2
        count -= 2
      end
      
      @cred_array.each do |digit|
        if digit > 9
          digit.to_s.each_char do |split|
            @cred_array.push(split.to_i)
          end
          @cred_array.delete_at(@cred_array.index(digit))
        end
      end
      
      if @cred_array.reduce(:+) % 10 == 0
        return true
      else
        return false
      end
    end
end


# Reflection
=begin

What was the most difficult part of this challenge for you and your pair?
-Getting every other digit to double.  Our initial solution worked for the tests but when we looked at it step by step it wasn't working properly.  So we refactored to a much simpler solution that is actually more readable I think.

What new methods did you find to help you when you refactored?
-None.

What concepts or learnings were you able to solidify in this challenge?
-The .reduce method.  Although that was a solution to a challenge two weeks ago I forgot what it was and how to use it.  Now that I have looked it up a second time I will remember it.