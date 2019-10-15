require "pry"

class Player 
    
    attr_accessor :name, :life_points 
    
    
    def initialize(name)
        @name = name
        @life_points = 10  
        

    end
    
    
    def show_state
        puts " #{@name} a #{@life_points} points de vie"
        
end
    
    
    def gets_damage(damage)
        @life_points = @life_points - damage
				
				if @life_points <= 0 
						@life_points = 0
						puts "Le joueur #{name} a été tué"
						
				end 
    end
		
		
		def attacks(player_name)
				
				puts "Le joueur #{name} attaque le joueur #{player_name.name}"
				
				result = compute_damage
				
				puts "Il lui inflige #{result} points de dommage"
				
					
				player_name.gets_damage(result)
				
end
  


 def compute_damage
    return rand(1..6)
  end
end	
		
		
		
class HumanPlayer < Player
		
		attr_accessor :weapon_level
		
		def initialize(name)
				@life_points = 100
				@weapon_level = 1

end
		
		def show_state
				
				puts " Tu as #{@life_points} points de vie et une arme de niveau #{@weapon_level} "
end
		
		def compute_damage
    rand(1..6) * @weapon_level
  end
		
		
		def search_weapon
			result = rand(1..6) 
			
				puts "Tu as trouvé une arme de niveau #{result}"
				
				
				if result > @weapon_level
						puts "Cette arme est plus puissante, tu la prends!"
					  @weapon_level = result
						
				else puts "Cette arme n'est pas plus puissante que la tienne!"
				end
				
		end	
		def search_health_pack
				
						health_pack = rand(1..6)
						puts "Tu as fait un #{health_pack}"
						if health_pack == 1 
								puts "Tu n'as rien trouvé..."
						
						elsif 2 <= health_pack && health_pack <= 5
						puts "Bravo ,tu as trouvé un pack de +50 points de vie"
						if @life_points < 50 
								@life_points = @life_points + 50
						else 
								@life_points = 100
						end
						elsif health_pack == 6 	
						puts "Waow, tu as trouvé un pack de +80 points de vie !"
			     if @life_points < 20 
					  @life_points = @life_points + 80 
					 else 
								@life_points == 100
			
						end
						end
				end
		end
				
						
	
				
				
		

    
#binding.pry 
