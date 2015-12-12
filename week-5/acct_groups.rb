=begin
input: an array of all the names in my cohort
output: arrays of 4-5 people
figure out how many groups I need
choose a name at random
add that name to a new array
delete that name from orginal array
make sure all arrays are evenly spreaad with people
=end


def acct_group(ppl)
	groups = Hash.new
	num_ppl = ppl.length
	num_groups = num_ppl / 5
	if num_ppl % 5 != 0
		num_groups += 1
	end
	counter = 1
	num_ppl.times do
		indx = rand(num_ppl)
		groups[ppl[indx]] = counter
		ppl.delete_at(indx)
		num_ppl -= 1
		counter += 1
		if counter > num_groups
			counter = 1
		end
	end
	return groups.sort_by{|k, v| v}
end


my_cohort = ["Alex Forger", "Alexander Nelson", "Karen Ball", "Christopher Bovio", "Gino Paul Capio", "Jonathan Chin", "Claire Samuels", "Ray Curran", "David Louie", "Dave Spivey", "Max Davis", "Devin Mandelbaum", "Afton Downey", "Rebecca Gahart", "Gary Wong", "Hodges Glenn", "Everett Golden", "Christopher Graf", "Alana Hanson", "LeeAnne Hawley", "Sabri helal", "Thomas Huang", "Jeff Schneider", "Jillian Dunleavy", "Kevin Huang", "Khamla Phimmachack", "KT Khoo", "Andrew s Kim", "Joseph Kim", "Michal Klimek", "Nathan knockeart", "Brigitte Kozena","Donald Lang", "Tiffany Larson", "Liam Mackey", "Johanna Lonn", "Tyler McKenzie", "Katie Meyer", "Meagan Munch", "Lucas Nagle", "Lydia Nash", "Jovanka Nikolovski", "James O_Neal", "Greg Park", "Patrick Oliphant", "Peter Lowe", "Lauren Reid", "Roche Janken", "David Rothschild", "Susan Savariar", "Kurt Schlueter", "Sharon Claitor", "Marshall Sosland", "Catie Stallings", "Steven King", "Eric Tenza", "Timur Catakli", "Todd Seller", "Dan Turcza", "Lindsey Ullman", "Raj Vashist", "Violet Dang", "Chris Wong", "Angelika Yoder", "Michelle Zulli", "Jordan Fox"]

acct_group(my_cohort)

=begin

What was the most interesting and most difficult part of this challenge?
-The most difficult was how to organize my output.  I wanted a separate array for each group but I couldn't figure out how to make a variable number of empty arrays and then access them to fill with names.  Because I wanted my solution to work for any number of people and not just 66, I had to use a hash.  The most interesting was that I created my groups randomly, so every time you run the method the groupings are different.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
-I suppose.

Was your approach for automating this task a good solution? What could have made it even better?
-Since it works for any number of people I would say it is a good solution.  To make it better I could have formated the result and printed it to the screen with something like "Group 1 consists of..." and so on.  But if there is a way to not use a hash and put the names directly into a random number of groups based on how many people there are it would be much better.

What data structure did you decide to store the accountability groups in and why?
-I stored them in a hash because I couldn't figure out how to put them directly into arrays.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
-I learned delete_at.  But not refactoring.  I knew I needed to do this to make my solution work, I just didn't know the method to use.