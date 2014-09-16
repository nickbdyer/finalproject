
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
			puts "Let's choose the NPC position:"
			print "Enter x coordinate:"
			xnpc = gets.to_i
			print "Enter y coordinate:"
			ynpc = gets.to_i

			world.locatenpc(xnpc, ynpc)
		end
	else
		puts "Boring!"
	end
	



world.showposition

puts "Right! Let's go! Use WASD to move."
if player.health > 0 
	while player.health > 0 do
		input = gets.chomp
		world.move(input)
	end
else
	puts "You have died!"
	exit
end


