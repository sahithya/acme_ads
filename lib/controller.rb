require 'newspaper'
require 'advertisement'

class Controller

	def list_newspapers
		Newspaper.list		
	end

	def add_newspaper(newspaper)
		Newspaper.create(newspaper)
	end

	def list_advertisements
		Advertisement.list
	end

	def add_advertisement(ad)
		Advertisement.create(ad)
	end

end
