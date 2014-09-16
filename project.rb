class Map

	attr_accessor :startset, :finishset, :npcset

	def initialize (x, y)
		@map = [x.abs, y.abs] 
		@currentpos = []
		@npcpos = []
		@startset = false
		@finishset = false
		@npcset = false

	end

	def setstart (startx, starty)
		@currentpos << startx
		@currentpos << starty
			if startx <= @map[0] && starty <= @map[1]
				puts "Start point set!"
				puts
				@startset = true
			else
				puts "Start point must be within map."
				puts
			end
	end
	

	def setfinish (finx, finy)
		@finish = [finx, finy]
		if finx <= @map[0] && finy <= @map[1]
			puts "Finish point set!"
			puts
			@finishset = true
		else
			puts "Finish point must be within map."
			puts
		end
	end

	def locatenpc(npcx, npcy)
			@npcpos << npcx
			@npcpos << npcy
			if npcx <= @map[0] && npcy <= @map[1]
				puts "NPC position set!"
				puts
				@npcset = true
			else
				puts "NPC position must be within map."
				puts
			end
	end


	def createnpc
		npcarray = ["Rogue", "Warlock", "Swordsmith", "Wizard"]
		randNPC = npcarray[rand(npcarray.length)]

		npc = randNPC
		case npc
		when "Rogue"
			Rogue.new
		when "Warlock"
			Warlock.new
		when "Swordsmith"
			Swordsmith.new
		when "Wizard"
			Wizard.new
		end

	end

	def showposition
		puts "You are at #{@currentpos[0]}, #{@currentpos[1]}"
	end


	def move (direction)
		case direction
		when "w"
			@currentpos[1] += 1
			if @currentpos == @finish
				puts "Congratulations you win!"
			elsif @currentpos[1] <= @map[1] && @currentpos == @npcpos
				puts "You move up one space, there is someone here."
				createnpc
				showposition
			elsif @currentpos[1] <= @map[1]
				puts "You move up one space."
				showposition
			else
				puts "You are at the edge of the map, you cannot move up."
				@currentpos[1] -= 1
				showposition
			end

		when "s"
			@currentpos[1] -= 1
			if 	@currentpos == @finish
				puts "Congratulations you win!"
			elsif
				@currentpos[1] >= 0 && @currentpos == @npcpos
				puts "You move down one space, there is someone here."
				createnpc
				showposition
			elsif
				@currentpos[1] >= 0
				puts "You move down one space."
				showposition
			else
				puts "You are at the edge of the map, you cannot move down."
				@currentpos[1] += 1
				showposition
			end
		when "d"
			@currentpos[0] += 1
			if 	@currentpos == @finish
				puts "Congratulations you win!"
			elsif @currentpos[0] <= @map[0] && @currentpos == @npcpos
				puts "You move right one space, there is someone here."
				createnpc
				showposition
			elsif @currentpos[0] <= @map[0]
				puts "You move right one space."
				showposition
			else
				puts "You are at the edge of the map, you cannot move right."
				@currentpos[0] -= 1
				showposition
			end
			
		when "a"
			@currentpos[0] -= 1
			if 	@currentpos == @finish
				puts "Congratulations you win!"
			elsif @currentpos[0] >= 0  && @currentpos == @npcpos
				puts "You move left one space, there is someone here."
				createnpc
				showposition
			elsif @currentpos[0] >= 0
				puts "You move left one space."
				showposition
			else
				puts "You are at the edge of the map, you cannot move left."
				@currentpos[0] += 1
				showposition
			end	

		else	
			puts "Seriously, how difficult is it to use WSAD???"
		end
	end


end




class Character 
	
	attr_accessor :health, :attack, :money

	def initialize (name)
		@health = 10
		@attack = 1
		@money = 5
		@name = name

		puts "Welcome #{@name}, you start with #{@health} health, and #{@money} gold pieces!"
		puts
		puts
	end

end




class NPC

	def initialize
		@health = 0
		@power = 0
		@gold = rand(1..10)

	end

end


class Rogue < NPC

	def initialize
		puts "Hello I am a Rogue!"
		@health = 3
		@power = 1
		while @health > 0 do
			puts "The rogue attacks! You hit him for #{player.attack}, he hits you for #{@power}."

	end

end


# class Warlock < NPC

# 	def initialize
# 		puts "Hello I am a Warlock!"
# 		@health = 2
# 		@power = 2
# 	end
# end


class Merchant < NPC

	def initialize
		@health = 0	
	end

end

class Swordsmith < Merchant

	def initialize
		puts "Hello I am a Swordsmith!"
		puts "Would you like me to sharpen your sword for 5 gold pieces?"

	end


	def sharpen
		if player.money >= 5
			player.attack += 1
			player.money - 5
			puts "Your sword has been sharpened! "
		else 
			puts "You don't have enough money!"
	end

end

# class Wizard < Merchant

# 	def initialize
# 		puts "Hello I am a Wizard!"
# 		puts "Would you like me to heal you for 5 gold pieces?"
# 	end


# 	def heal
# 		player.health += 1
# 		player.money - 5
# 		puts "Your health has been increased!"
# 	end
# end







=begin


Game


Classes (characters)
Decision Making (if, else)
External Service (require....)
Array/Hashes
define_method
metaprogramming maybe...
push to git

Text Based Adventure Game


character
	- properties
		- health
		- attack
		- money
	- starting position

- map
	- width
	- height
	- final position


- interactive npc
	- position
	- occupation
		- merchant
			- +1 attack (swordsmith) cost 5
			- +1 health (wizard) cost 10
		- rogue
			- -1 health per hit
			- 5 health
		- warlock
			- -2 health per hit
			- 3 health	

inputs are
	-dimensions of teh map
	- start position of hero
	- final positon 
	- position of each npc
		- type
		- if merchant
				- type of merchant and cost

after all variables are inputed
	- loop and get the option of going up down left or right, keeping in mind boundries
		- if you go outside map, warning and you dont change position
			- if you go inside map
					if you meet npc, trigger message of event
					message if you die
					message if you reach gate, congrats you win. 

always display coordinates

- must be OOP
- must use at least one array
- use a mailing gem to send end result of game to myself. 
- must use inheritance


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
