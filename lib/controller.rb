require 'newspaper'
require 'advertisement'

class Controller

	def initialize
		@newspapers = []
		@ads = []
	end

	def list_newspapers
		@newspapers
	end

	def add_newspaper(newspaper)
		@newspapers.push( Newspaper.new(newspaper[:name], newspaper[:city]))
	end

	def list_advertisements
		@ads
	end

	def add_advertisement(ad)
		@ads << Advertisement.new(ad[:name], ad[:description])

	end

end
