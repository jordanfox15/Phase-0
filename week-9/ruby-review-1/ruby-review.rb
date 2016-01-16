# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
=begin
determine how many digits
create method in_words
	separate into digits and push to an array
	call other methods
	print string
create separate methods in_words can call depending on how many digits
=end

# Initial Solution

def in_words(num)
	final_string = ""
	arr_index = 0
	digits = num.length
	temp_array = num.to_str.split(//)
	if digits == 3
		final_string = hundreds(temp_array, arr_index)
	elsif digits == 2
		final_string = tens(temp_array, arr_index)
	else
		final_string = ones(temp_array, arr_index)
	end
	return final_string
end

def hundreds(temp_array, arr_index)
	hun = temp_array[arr_index]
	case hun
	when "1"
		temp_string ="One hundred"
	when "2"
		temp_string ="One hundred"
	when "3"
		temp_string ="One hundred"
	when "4"
		temp_string ="One hundred"
	when "5"
		temp_string ="One hundred"
	when "6"
		temp_string ="One hundred"
	when "7"
		temp_string ="One hundred"
	when "8"
		temp_string ="One hundred"
	when "9"
		temp_string ="One hundred"



# Refactored Solution






# Reflection