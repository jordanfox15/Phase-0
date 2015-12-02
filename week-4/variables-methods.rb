puts "Hello, what is your first name?"
fname = gets.chomp
puts "What is your middle name?"
mname = gets.chomp
puts "And what is your last name?"
lname = gets.chomp
puts "Your name is #{fname} #{mname} #{lname}."


puts "What is your favorite number?"
favnum = gets.chomp.to_i
favnum += 1
puts "I will posit that #{favnum} is a bigger better number."


#https://github.com/jordanfox15/Phase-0/blob/master/week-4/define-method/my_solution.rb


#https://github.com/jordanfox15/Phase-0/blob/master/week-4/address/my_solution.rb


#https://github.com/jordanfox15/Phase-0/blob/master/week-4/math/my_solution.rb


#How do you define a local variable?
#-variablename = whatever you want to store in your variable.

#How do you define a method?
#-def methodname(argument1, argument2)
#-end

#What is the difference between a local variable and a method?
#-A variable stores content which can be called over and over while a method stores an action that can be called and done over and over.

#How do you run a ruby program from the command line?
#-ruby nameofprogram.rb

#How do you run an RSpec file from the command line?
#-rspec rspecfilename.rb

#What was confusing about this material?  What made sense?
#-Everything made sense except the rspec address file.  Even though my output matched the compare string exactly, it said it didn't.