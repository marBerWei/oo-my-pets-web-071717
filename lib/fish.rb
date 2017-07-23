class Fish 
	attr_reader :name 
	attr_accessor :mood

	@@fishes = []

	def initialize(name)
		@name = name 
		@mood = 'nervous'
		@@fishes << self.name
	end

  
end