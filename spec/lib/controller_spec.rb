require 'spec_helper'
require 'controller'

describe Controller do

	let (:controller) {Controller.new}

	it "should be empty when no newspapers have been added" do
		controller.list_newspapers.should be_empty
	end

end
