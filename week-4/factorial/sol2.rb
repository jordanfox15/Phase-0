# Factorial

# I worked on this challenge [with: ].


# Your Solution Below
def factorial(number)
	if number == 0
		return 1
	else
		total = number
		number -= 1
		until number == 0 do
			total *= number
			number -= 1
		end
		return total
	end
end