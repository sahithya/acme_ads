class Newspaper

	attr_accessor :name, :city

	@list = []

	def self.list
		@list
	end
	
	def self.create(values)
		newspaper = Newspaper.new(values[:name], values[:city])
		@list.push(newspaper)
		newspaper
	end

	def initialize(name, city)
		@name = name
		@city = city
	end

end
