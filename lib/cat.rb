class Cat 
  # code goes here
  attr_reader :num_lives
  	attr_reader :name 
	attr_accessor :mood

	@@pets = []

	def initialize(name)
		@name = name 
		@mood = 'nervous'
		@@pets << self.name
	end

end