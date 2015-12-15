#Attr Methods

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize
    	@name = "Jordan Fox"
  	end
end


class Greetings
	def initialize
		@namedata = NameData.new
	end

	def hello
		puts "Hello #{@namedata.name}!  How wonderful to see you today."
	end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 1 Questions
What are these methods doing?
-Some= are changing the information stored in the instance variables and some are simply returning the information.

How are they modifying or returning the value of instance variables?
-They are taking the new info as an argument and setting the instance variable to it.

Release 2 Questions
What changed between the last release and this release?
-The method set to return the current age was simplified to attr_reader.

What was replaced?
-The what_is_age method.

Is this code simpler than the last?
-Yes.

Release 3 Questions
What changed between the last release and this release?
-attr_writer :age was added.

What was replaced?
-The change_my_age method.

Is this code simpler than the last?
Yes.

Release 6 Questions
What is a reader method?
-A method that will return the value of the instance variable.

What is a writer method?
-A method that will change the value of the instance variable.

What do the attr methods do for you?
-They simply code and remove repetition.

Should you always use an accessor to cover your bases? Why or why not?
-No.  If you did that you would allow write access to all your variables which could cause some serious problems down the line.

What is confusing to you about these methods?
-Not much.  It is a pretty easy concept.

=end