class Advertisement
	attr_accessor :name, :description
	attr_reader :newspapers

	@list = []
	
	def self.list
		@list
	end

	def self.create(content)
		ad = Advertisement.new(content[:name], content[:description])
		@list.push(ad)
		ad
	end

	def self.delete_all
		@list = []
	end

	def initialize(name, description)
		@name = name
		@description = description
		@newspapers = []
	end

	def associate_newspaper(newspaper)
		@newspapers.push(newspaper)
	end

end
