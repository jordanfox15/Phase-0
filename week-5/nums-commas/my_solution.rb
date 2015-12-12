# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? -a positive integer
# What is the output? (i.e. What should the code return?) -the integer turned into a string with proper comma implementation
# What are the steps needed to solve the problem?
=begin
turn the integer into an array of strings with each digit as a separate element in the same order as the integer
reverse the array
iterate over the array in blocks of 3, changing it into one string and adding a comma between blocks
reverse the string
=end


# 1. Initial Solution

def separate_comma(pos_int)
	helpful_array = Array.new
	also_helpful = Array.new
	pos_int.to_s.each_char {|digit| helpful_array.push(digit)}
	helpful_array.reverse!
	helpful_array.each_slice(3) {|k_groups|
		also_helpful.push("#{k_groups.join},")}
	return also_helpful.join.chop.reverse
end


# 2. Refactored Solution

def separate_comma(pos_int)
	helpful_array = Array.new
	helpful_string = ""
	pos_int.to_s.each_char {|digit| helpful_array.push(digit)}
	helpful_array.reverse!
	helpful_array.each_slice(3) {|k_groups| 
		helpful_string += (k_groups.join + ",")}
	return helpful_string.chop.reverse
end


# 3. Reflections
=begin
What was your process for breaking the problem down? What different approaches did you consider?
-Although I didn't know the exact syntax or exactly how some of the methods I used worked, I knew they existed and drew on that knowledge to break the problem down.  None.

Was your pseudocode effective in helping you build a successful initial solution?
-Yes and no.  I found that coding the solution was a bit different then my exact pseudocode but they were minor differences.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
-I can only discuss this question in terms of my initial solution as my refactor didn't use any new methods, it used less.  But in this context my experience with the ruby docs was waaaaaaaay better.  I didn't know the exact name of each.char or each.slice but I knew a method to do this existed so I went to string and array respectively and looked for what looked like the method I wanted and bingo.  When I look in the docs for something I'm not sure exists, it becomes very frustrating.  They didn't change the way my code works because I designed it to work that way initially.

How did you initially iterate through the data structure?
-The first thing I did was turn the integer into a string and iterated through each character.

Do you feel your refactored solution is more readable than your initial solution? Why?
-Not necessarily.  They are almost identical, I just stored my solution in a string instead of using 2 arrays reducing the number of methods I had to call.  But the code looks very similar.