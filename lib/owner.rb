class Owner

attr_accessor :name, :pets, :mood

attr_reader :species

@@all = []
@@count = 0

def initialize(species)
	@species = species
	@@all << self
	@@count += 1
	@pets = {:fishes => [], :dogs => [], :cats => []}
end

def self.all 
	@@all 
end

def self.reset_all
	@@all = []
	@@count = 0
end

def self.count
	@@count
end

def say_species
	"I am a #{self.species}."
end

def pets
	@pets 
end

def buy_fish(name)
	new_fish = Fish.new(name)
	@pets[:fishes] << new_fish
end

def buy_cat(name)
	new_cat = Cat.new(name)
	@pets[:cats] << new_cat
end

def buy_dog(name)
	new_dog = Dog.new(name)
	@pets[:dogs] << new_dog
end

def walk_dogs
	@pets[:dogs].map {|dog| dog.mood = 'happy'}
end 

def play_with_cats
	@pets[:cats].map {|cat| cat.mood = 'happy'}
end 

def feed_fish
	@pets[:fishes].map {|fish| fish.mood = 'happy'}
end 

def sell_pets
	@pets.values.each do |animal_array| 
		animal_array.map do |animal|
			animal.mood = "nervous"
		end 
	end
	new_hash = {}
  	keys_array = @pets.keys
  	count = 0 
  	while keys_array.length > count 
    	new_hash[keys_array[count]] = []
    	count += 1 
  	end 
  	@pets = new_hash
	
end

def list_pets
	"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
end


end