require 'spec_helper'
require 'controller'
require 'newspaper'
require 'advertisement'

describe Controller do

	let (:controller) {Controller.new}

	it "should retun an empty list when no newspapers have been added" do
		controller.list_newspapers.should be_empty
	end

	it "should add a newspaper to the newspaper list" do
		newspaper = Newspaper.new
		controller.add_newspaper(newspaper)
		controller.list_newspapers.size.should == 1
		controller.list_newspapers.first.should == newspaper
	end

	it "should retun an empty list when no ads have been added" do
		controller.list_advertisements.should be_empty
	end


	it "should add an ad to the ad list" do
		ad = Advertisement.new
		controller.add_advertisement(ad)
		controller.list_advertisements.size.should == 1
		controller.list_advertisements.first.should == ad
	end
end
