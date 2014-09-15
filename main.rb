
require_relative 'project.rb'

puts "***---...Welcome to Text Adventure!...---***"

puts
puts

puts "What is your name?"
name = gets.chomp
player = Character.new(name)

puts "First define the size of the map you want:"
print "Enter width:"
width = gets.to_i
print "Enter height:"
height = gets.to_i

	world = Map.new(width, height)

while world.startset == false do
	puts "Now choose your starting position:"
	print "Enter x coordinate:"
	xs = gets.to_i
	print "Enter y coordinate:"
	ys = gets.to_i

	world.setstart(xs, ys)
end

while world.finishset == false do
	puts "Let's choose your finish position:"
	print "Enter x coordinate:"
	xf = gets.to_i
	print "Enter y coordinate:"
	yf = gets.to_i

	world.setfinish(xf, yf)
end

print "Do you want and NPC? (y/n): "
npcyn = gets.chomp
	if npcyn == "y"
		while world.npcset == false do
			puts "Let's choose your finish position:"
			print "Enter x coordinate:"
			xnpc = gets.to_i
			print "Enter y coordinate:"
			ynpc = gets.to_i

			world.locatenpc(xnpc, ynpc)
	else
		puts "Boring!"
	
end


world.showposition

puts "Right! Let's go! Use WASD to move."

while player.health != 0 || player.health < 0 do
	input = gets.chomp
	world.move(input)
end






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