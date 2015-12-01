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