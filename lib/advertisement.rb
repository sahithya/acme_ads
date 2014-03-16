class Advertisement
	attr_accessor :name, :description
	
	@list = []
	
	def self.list
		@list
	end

	def self.create(content)
		ad = Advertisement.new(content[:name], content[:description])
		@list.push(ad)
		ad
	end

	def initialize(name, description)
		@name = name
		@description = description
	end

end
