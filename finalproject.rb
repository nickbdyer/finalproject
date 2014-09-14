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
		- attach
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
		- if you go outside map, warning and you dont' change position
			- if you go inside map
					if you meet npc, trigger message of event
					message if you die
					message if you reach gate, congrats you win. 

always display coordinates

- must be OOP
- must use at least one array
- use a mailing gem to send end result of game to myself. 
- must use inheritance




	
end
