require "pry"

class Game
	
	attr_accessor :human_player, :enemies
	
	def initialize(human_player, enemies)
		@human_player