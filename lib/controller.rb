class Controller

	def initialize
		@newspapers = []
	end

	def list_newspapers
		@newspapers
	end

	def add_newspaper(newspaper)
		@newspapers.push(newspaper)
	end

end
