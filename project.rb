
class Character (x, y)

	def initialize
		@health = 10
		@@attack = 1
		@money = 5
		@position = [x, y]
	end

	def showposition
		puts "You are at #{@position[0]}, #{@position[1]}"
	end



end


class Map (x, y, n)

	def initialize 
		@map = [x, y] 
		@numberofNPC = n
	end

	def setfinish (posx, posy)
		finish = [posx, posy]
		puts "Finish point set!"
	end

end

npcarray = ["Rogue", "Warlock", "Swordsmith", "Wizard"]
randNPC = rand(npcarray)



class NPC

	def initialize
		@health = 0
		@power = 0
		@gold = rand(1..10)

	end

end


class Rogue < NPC
	def initialize
		@health = 3
		@power = 1
	end

end


class Warlock < NPC
	def initialize
		@health = 2
		@power = 2
	end
end


class Merchant < NPC
	def initialize
		@health = 0	
	end

	def 

end

class Swordsmith < Merchant

	def initialize
		puts "Hello I am a Swordsmith!"
		puts "Would you like me to sharpen your sword for 5 gold pieces?"
	end


	def sharpen
		@@attack += 1
		puts "Your sword has been sharpened! "
	end
end

class Wizard < Merchant

	def initialize
		puts "Hello I am a Wizard!"
		puts "Would you like me to heal you for 5 gold pieces?"
	end


	def heal
		@@health += 1
		puts "Your health has been increased!"
	end
end



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

=end
