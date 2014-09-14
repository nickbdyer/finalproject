
require_relative 'project.rb'

puts "***---...Welcome to Text Adventure!...---***"

puts
puts

puts "What is your name?"
name = gets.chomp

puts "First define the size of the map you want:"
print "Enter width:"
width = gets.chomp
print "Enter height:"
height = gets.chomp
puts "Now choose your starting position:"
print "Enter x coordinate:"
xs = gets.chomp
print "Enter y coordinate:"
ys = gets.chomp
puts "Let's choose your finish position:"
print "Enter x coordinate:"
xf = gets.chomp
print "Enter y coordinate:"
yf = gets.chomp
print "How many NPCs do you want?: "
numnpc = gets.chomp

world = Map.new (width, height, numnpc)
player = Character.new (xs, ys)
world.setfinish(xf, yf)


puts "Right! Let's go! Use WASD to move."
move = gets.chomp
puts "---You move #{direction}.---"



=begin

Enter width of map: 4
Enter height of map: 4
Enter character start position x: 0
Enter character start poisition y: 0
Enter final position x: 4
Enter final position y: 4
How many npcs: 1
Npc 1 type: rogue
Enter Npc 1 position x: 1
Enter Npc 1 position y: 1
Game starts!
Where do you want do go? U/D/L/R
--- you select U ---
says: you can't go up!
--- you select down ---
You are now facing the rogue. He hits you 2 times. Your health is now at 2.
or
You are now facing the rogue. He hits you 2 times. Your die!

Where do you want do go? U/D/L/R
--- you select right ---
You have now reached the portal. Congratulations!

=end