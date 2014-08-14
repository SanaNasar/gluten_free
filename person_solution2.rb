# Create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
 
class Person

# @@pizza = ["cheese", "gluten", "tomatoes"]

  def initialize(allergies)
    @allergies = allergies
    @stomach = []
  end

  def eat(food)
    check_food(@allergies, food)
    puts "Do you want to eat the food?"
 		input = gets.chomp.downcase
 		if input == "yes"
 				puke(food)
 		else puts "You can live"
 	  end
  end

 	def puke(food)
 		@stomach = []
    puts "WARNING! You should puke right now!"
 		puts "Bravo! You have emptied your stomach"
	end

end

	def check_food(allergies, food)
		is_allergic = false
    food.each do |ingredient|
      if @allergies.include?(ingredient)
        is_allergic = true
        puts "Oops! Hey don't eat:( Allergy Warning"
      end
    end
      if !is_allergic
        @stomach.push(food)
      end
	  end



pizza = ["cheese", "gluten", "tomatoes"]
# pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
# water = ["h", "h", "o"]


bob = Person.new("gluten")
bob.eat(pizza)