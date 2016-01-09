# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
# 	Split the sentence into individual strings
# 	Reverse the strings
# 	Print the sentence back out

# Initial Solution
def reverse_words(sentence)
	sent_arr = sentence.split(" ")
	sent_arr.each do |word|
		sent_arr[sent_arr.index(word)] = word.reverse
	end
	return sent_arr.join(" ")
end

