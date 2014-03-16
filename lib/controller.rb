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

	def list_ads
		@ads
	end

end
