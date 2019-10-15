require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

require "pry"

puts "----------------------------------------------------"
puts "| Bienvenue sur 'Ils veulent tous ma POO'" + "          " +"|"
puts "| Le but du jeu est d'être le dernier survivant !" + "  " + "|"
puts "----------------------------------------------------"


puts "Comment t'appelles-tu ?"
user = gets.chomp.to_s

user = HumanPlayer.new(user)
player1 = Player.new("Josiane")
player2 = Player.new("José")
enemies = []
enemies << player1
enemies << player2



while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)

puts " "
puts "Voici l'état de notre joueur:"
user.show_state 
	
	
puts " "	
puts "Quelle action veux-tu faire ?"

puts "a - chercher une meilleure arme"
puts "s - chercher à se soigner" 

puts "attaquer un joueur en vue :"
	
puts "0 - #{player1.name} a #{player1.life_points} points de vie " 
puts "1 - #{player2.name} a #{player2.life_points} points de vie "
	
answer = gets.chomp.to_s
	

	
	if answer == "a"
	user.search_weapon 
		
		
	elsif answer == "s"
	user.search_health_pack
			
		
	elsif answer == "0"
	user.attacks(player1)
		
	elsif answer == "1"
	user.attacks(player2)
		
  else puts "Tu dois choisir entre a, s, 0 ou 1 ! "
		end
	


break

end

puts " "
puts "Les autres joueurs t'attaquent !"


  enemies.each do |enemies| 
	enemies.attacks(user)
	
	
	if player1.life_points <= 0 || player2.life_points <=0
		puts "#{player1.name} est déja mort"
		puts "#{player2.name} est déja mort"
		
	end
		
puts "Voici l'état de notre joueur:"
user.show_state 
end

	
	
	
	







binding.pry