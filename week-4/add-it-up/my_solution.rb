# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Gary Wong].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution
#def total(numarray)
#	stop = numarray.length
#	count = 1
#	tot = numarray[0]
#	until count == stop do
#		tot += numarray[count]
#		count += 1
#	end
#	return tot
#end


# 3. total refactored solution
def total(numarray)
	tot = numarray.reduce(:+)
	return tot
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(stringarray)
	stop = stringarray.length - 1
	count = 1
	tot = stringarray[0].to_s.capitalize + " "
	until count == stop do
		tot += (stringarray[count].to_s + " ")
		count += 1
	end
	tot += (stringarray[stop] + ".")
	return tot
end


# 6. sentence_maker refactored solution

