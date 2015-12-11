# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# split up into individual keys
# store in hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash of input with amount

# Method to add an item to a list
# input: item name and optional quantity
# steps: set string as key with default quantity
# update quantity if needed
# output: updated hash

# Method to remove an item from the list
# input: name of item to be removed
# steps: search for item in hash
# remove key and value from hash if there
# output: updated hash

# Method to update the quantity of an item
# input: item name of new quantity
# steps: search for item in hash
# update quantity if present
# output: updated hash

# Method to print a list and make it look pretty
# input: current hash
# steps: print keys and quantities
# output: key + value + nice words to make it look pretty

#Create a hash
#get input what method to use 
#perform method 
#send output 

def create_list(list)
  temp_hash = Hash.new 
  list.split(" ").each {|x| temp_hash[x] = 1}#[word1, word2, word3]
  print temp_hash
  return temp_hash
end

#grocery_list = create_list("apple banana ketchup bread") # -> { 'apple' => 1, 'banana' => 1, 'ketchup' => 1, 'bread' => 1}
#grocery_list_2 = create_list("peanuts chips soda")

def add_to_list(older_list, item, quantity)
  older_list[item] = quantity
  return older_list
 end

#add_to_list(grocery_list_2, "bacon", 3)
#print grocery_list_2
def remove_list(older_list, item)
  older_list.delete(item)
  return older_list
end

#remove_list(grocery_list_2, "chips")
#print grocery_list_2
def update_quan(older_list, item, quantity)
  older_list[item] = quantity
  return older_list  
end

#update_quan(grocery_list_2, "bacon", 1)
#print grocery_list_2

def print_list(older_list)
  puts "You grocery list: "
  older_list.each do |item, qty|
    puts "#{item.capitalize} - Qty: #{qty}"
  end
end

#print_list(grocery_list_2)

puts "Welcome to shopper helpers. We are here to help you with your shopping. What items do you want to buy?"
grocery_list = create_list(gets.chomp)
loop  do #prompt user on what to do
  puts "Is there anything else you would like to do?(Adds, Remove, No, Update, Print)"
  inputs = gets.chomp #gets.chomp #Adds, Remove, No, Update, Print  
case inputs
  when "Adds"
    puts "What would you like to add"
    add_item = gets.chomp
    puts "How many?"
    quantity = gets.chomp
    grocery_list = add_to_list(grocery_list, add_item, quantity)
  when "Remove"
    puts "What you like to remove?"
    remove = gets.chomp
    grocery_list = remove_list(grocery_list, remove)
  when "Print"
    print_list(grocery_list)
  when "Update"
    puts "What would you like to change?"
    item = gets.chomp
    puts "How many would you like?"
    quantity = gets.chomp
    grocery_list = update_quan(grocery_list, item, quantity)
  when "No"
  	print_list(grocery_list)
    break
  end
end
# puts "Your list:"
# older_list.each do |item, qty|
#   puts "#{item} -> #{qty}"
# end

#What did you learn about pseudocode from working on this challenge?
#-That it can help you code if done properly.

#What are the tradeoffs of using Arrays and Hashes for this challenge?
#-  I am not sure what this question is asking.  But we needed a hash to store the quantity easily and we had to make sure to pass the hash around between the methods.

#What does a method return?
#-What you tell it to or the last calculated line.

#What kind of things can you pass into methods as arguments?
#-Pretty much any kind of valid data.

#How can you pass information between methods?
#-By storing that info in a variable from the previous method and giving it to the next method as an argument.

#What concepts were solidified in this challenge, and what concepts are still confusing?
#-The only thing that is still confusing is refactoring.  We are supposed to look for built in methods we don't know exist to make simple code even simpler?