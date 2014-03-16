require 'spec_helper'
require 'controller'

describe Controller do

	let (:controller) {Controller.new}

	it "should retun an empty list when no newspapers have been added" do
		controller.list_newspapers.should be_empty
	end

	it "should add a newspaper to the newspaper list" do
		controller.add_newspaper({:name => "Detroit Free Press", :city => "Detroit"})
		controller.list_newspapers.size.should == 1
		controller.list_newspapers.first.name.should == "Detroit Free Press"
	    controller.list_newspapers.first.city.should == "Detroit"		
	end

	it "should retun an empty list when no ads have been added" do
		controller.list_advertisements.should be_empty
	end


	it "should add an ad to the ad list" do
		controller.add_advertisement({:name => "BOGO Powdered milk", :description => "Buy one, get one free promotion when you purchase Acme's powdered milk"})
		controller.list_advertisements.size.should == 1
		controller.list_advertisements.first.name.should == "BOGO Powdered milk"
	end
end
