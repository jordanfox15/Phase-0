# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# - errors.rb
# 2. What is the line number where the error occurs?
# - 170
# 3. What is the type of error message?
# - syntax error
# 4. What additional information does the interpreter provide about this type of error?
# - It was expecting the keyword end
# 5. Where is the error in the code?
# - At the very end of the entire file.
# 6. Why did the interpreter give you this error?
# - Because after line 15 the method needs 2 "end"s, and it only has 1.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# - 36
# 2. What is the type of error message?
# - NameError
# 3. What additional information does the interpreter provide about this type of error?
# - undefined local variable or method
# 4. Where is the error in the code?
# - doesn't say
# 5. Why did the interpreter give you this error?
# - Because south_park is an object with no definition.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# - 50
# 2. What is the type of error message?
# - NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# - undefined method
# 4. Where is the error in the code?
# - doesn't say
# 5. Why did the interpreter give you this error?
# - Same as the last one basically.  The interpreter sees cartman() as a method but it has no definition.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# - 69
# 2. What is the type of error message?
# - ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# - wrong number of arguments
# 4. Where is the error in the code?
# - doesn't say
# 5. Why did the interpreter give you this error?
# - The method has no arguments however on line 69 when it is called it provides one, so the interpreter is confused.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# - 88
# 2. What is the type of error message?
# - ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# - wrong number of arguments
# 4. Where is the error in the code?
# - doesn't say
# 5. Why did the interpreter give you this error?
# - The method needs an argument but when it is called nothing is provided.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# - 109
# 2. What is the type of error message?
# - ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# - wrong number of arguments
# 4. Where is the error in the code?
# - doesn't say
# 5. Why did the interpreter give you this error?
# - The method needs 2 arguments and only 1 is provided.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# - 124
# 2. What is the type of error message?
# - TypeError
# 3. What additional information does the interpreter provide about this type of error?
# - String can't be coerced into Fixnum
# 4. Where is the error in the code?
# - doesn't say
# 5. Why did the interpreter give you this error?
# - 5 cannot be multiplied by "Respect my authoritay"

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# - 139
# 2. What is the type of error message?
# - ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# - divided by 0
# 4. Where is the error in the code?
# - doesn't say
# 5. Why did the interpreter give you this error?
# - Because you can't divide by zero.  Ever.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# - 155
# 2. What is the type of error message?
# - LoadError
# 3. What additional information does the interpreter provide about this type of error?
# - cannot load such file
# 4. Where is the error in the code?
# - Again, it doesn't give me that information
# 5. Why did the interpreter give you this error?
# - Because the file cartmens_essay.md doesn't exist.  At least not where it is looking for it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#-Probably the 2nd one as it searched the entire file for its missing "end".

#How did you figure out what the issue with the error was?
#-It told me and most of it was obvious.

#Were you able to determine why each error message happened based on the code?
#-Yes.  As I said most of it was obvious based on what we have learned so for.

#When you encounter errors in your future code, what process will you follow to help you debug?
#-Now that I can make some sense of the error messages I can see more or less where the error is and what kind of error it is.  This will point me in the right direction to find and fix my code error.