class Newspaper

	attr_accessor :name, :city
	attr_reader :ads

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
		@ads = []
	end

	def associate_ad(ad)
		@ads.push(ad)
	end

	def self.delete_all
		@list = []
	end
end
