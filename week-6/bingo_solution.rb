# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #initialize an array with the letters bingo
  #randomly choose 1 using sample
  #call a random number between 1 - 100

# Check the called column for the number called.
  #check column x to see if it includes number called

# If the number is in the column, replace with an 'x'
  #if yes that column/number = X

# Display a column to the console
  #puts column x

# Display the board to the console (prettily)
  #puts column b then i... so on

# Initial Solution

class BingoBoard

  def initialize(board)
    @call = Array.new
    @bingo_board = board
    @letters = ["B", "I", "N", "G", "O"]
  end

  def call
    @call[0] = @letters.sample
    @call[1] = rand(100) + 1
    return @call
  end

  def check(let_num)
    row = 0
    loop do
      if @bingo_board[row][@letters.index(let_num[0])] == let_num[1]
        @bingo_board[row][@letters.index(let_num[0])] = "X"
        break
      else
        row += 1
        break if row > 4
      end
    end
  end

  def display
    for row in 0..4
    p @bingo_board[row]
    end
  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.check(new_game.call)
new_game.display
new_game.check(new_game.call)
new_game.display
new_game.check(new_game.call)
new_game.display
new_game.check(new_game.call)
new_game.display
new_game.check(new_game.call)
new_game.display
new_game.check(new_game.call)
new_game.display
new_game.check(new_game.call)
new_game.display
new_game.check(new_game.call)
new_game.display
new_game.check(new_game.call)
new_game.display
new_game.check(new_game.call)
new_game.display

#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
-More difficult then previous challenges.  But then so was the challenge.  My style works fine for me.  Once I write it down I don't have to look at it again.  I'm sure this will change when I get to much more complex programs.

What are the benefits of using a class for this challenge?
-You can pass around variables between methods.

How can you access coordinates in a nested array?
-Array[X][Y]

What methods did you use to access and modify the array?
-I used .index method to help me do this.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
-I learned the .index method.  It gives you the index a particular element of an array is at.  It is called by array.index(X).

How did you determine what should be an instance variable versus a local variable?
-If a variable needed to exist outside of a method to make the program work I made it and instance variable.  Otherwise I made it a local.

What do you feel is most improved in your refactored solution?
-Well my style is to refactor as I go sort-of.  I needed the .index method to make my pseudocode solution work but I didn't know what it was so I went and found it.