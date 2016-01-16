# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [2] hours.


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

def ones(temp_array, arr_index)
	one = temp_array[arr_index]
	if temp_array.length == 1 && one == "0"
		temp_string = "Zero"
	else
		if temp_array.length > 1 && arr_index != 0
			temp_string = " "
		else
			temp_string = ""
		end
		case one
		when "1"
			temp_string += "One"
		when "2"
			temp_string += "Two"
		when "3"
			temp_string += "Three"
		when "4"
			temp_string += "Four"
		when "5"
			temp_string += "Five"
		when "6"
			temp_string += "Six"
		when "7"
			temp_string += "Seven"
		when "8"
			temp_string += "Eight"
		when "9"
			temp_string += "Nine"
		end
	end
	return temp_string
end

def teens(temp_array, arr_index)
	one = temp_array[arr_index]
	case one
	when "0"
		temp_string = "Ten"
	when "1"
		temp_string = "Eleven"
	when "2"
		temp_string = "Twelve"
	when "3"
		temp_string = "Thirteen"
	when "4"
		temp_string = "Fourteen"
	when "5"
		temp_string = "Fifteen"
	when "6"
		temp_string = "Sixteen"
	when "7"
		temp_string = "Seventeen"
	when "8"
		temp_string = "Eighteen"
	when "9"
		temp_string = "Nineteen"
	end
	return temp_string
end

def tens(temp_array, arr_index)
	ten = temp_array[arr_index]
	if temp_array.length > 2
		temp_string = " "
	else
		temp_string = ""
	end
	case ten
	when "1"
		arr_index += 1
		temp_string += teens(temp_array, arr_index)
	when "2"
		temp_string += "Twenty"
	when "3"
		temp_string += "Thirty"
	when "4"
		temp_string += "Forty"
	when "5"
		temp_string += "Fifty"
	when "6"
		temp_string += "Sixty"
	when "7"
		temp_string += "Seventy"
	when "8"
		temp_string += "Eighty"
	when "9"
		temp_string += "Ninety"
	end
	if ten != "1"
		arr_index += 1
		temp_string += ones(temp_array, arr_index)
	end
	return temp_string
end

def hundreds(temp_array, arr_index)
	temp_string = ones(temp_array, arr_index)
	temp_string += " hundred"
	arr_index += 1
	temp_string += tens(temp_array, arr_index)
	return temp_string
end

def in_words(numb)
	temp_array = numb.to_s.split(//)
	arr_index = 0
	digits = temp_array.length
	if digits == 3
		final_string = hundreds(temp_array, arr_index)
	elsif digits == 2
		final_string = tens(temp_array, arr_index)
	else
		final_string = ones(temp_array, arr_index)
	end
	puts final_string
end


in_words(999)
in_words(870)
in_words(65)
in_words(0)
in_words(14)
in_words(312)