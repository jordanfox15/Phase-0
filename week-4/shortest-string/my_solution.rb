# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
	if list_of_words[0].nil?
		return nil
	else
		string_length = Hash.new
		sorted = Hash.new
		list_of_words.each do |words|
			string_length[words] = words.length
		end
		sorted = string_length.sort_by{|x, y| y}
		return sorted.first.first
	end
end