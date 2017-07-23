module Persistable 


module ClassMethods

def all
	self::ALL
end

def reset_all
	self.all.clear
end 

def count 
	self.all.count
end 

def initialize
	self.class.all << self 
end 

module InstanceMethods

	def inititalize 
		self.class.all << self
	end


end 
