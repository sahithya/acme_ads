class Controller

	def initialize
		@newspapers = []
		@ads = []
	end

	def list_newspapers
		@newspapers
	end

	def add_newspaper(newspaper)
		@newspapers.push(newspaper)
	end

	def list_advertisements
		@ads
	end

	def add_advertisement(ad)
		@ads << ad

	end

end
