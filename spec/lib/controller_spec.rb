require 'spec_helper'
require 'controller'
require 'newspaper'

describe @controller do

	before(:each) do
	   @controller = Controller.new
	   Newspaper.delete_all
	   Advertisement.delete_all
	end

	it "should retun an empty list when no newspapers have been added" do
		@controller.list_newspapers.should be_empty
	end

	it "should add a newspaper to the newspaper list" do
		@controller.add_newspaper({:name => "Detroit Free Press", :city => "Detroit"})
		@controller.list_newspapers.size.should == 1
		@controller.list_newspapers.first.name.should == "Detroit Free Press"
	    @controller.list_newspapers.first.city.should == "Detroit"		
	end

	it "should retun an empty list when no ads have been added" do
		@controller.list_advertisements.should be_empty
	end


	it "should add an ad to the ad list" do
		@controller.add_advertisement({:name => "BOGO Powdered milk", :description => "Buy one, get one free promotion when you purchase Acme's powdered milk"})
		@controller.list_advertisements.size.should == 1
		@controller.list_advertisements.first.name.should == "BOGO Powdered milk"
	end

	it "should associate a newspaper to an ad" do
		ad = Advertisement.create({:name => "Weekend cheese special", :description => "Get 15% off all Wisconsin cheese"})
	   	newspaper = Newspaper.create({:name => "The Plain Dealer", :city => "Cleveland"})	
		@controller.link_ad_to_newspaper(ad, newspaper)
		@controller.list_newspapers.first.ads.should == [ad]
	end

	it "should add two ads to a newspaper" do
		first_ad = Advertisement.create({:name => "Butter deal", :description => "Get 2 1lb Acme salted or unsalted butter for $5"})
		second_ad = Advertisement.create({:name => "Ultra soft bath tissue", :description => "Get 12 rolls of Acme ultra soft bath tissue for $6, a $2 savings."})
		newspaper = Newspaper.create({:name => "Detroit Free Press", :city => "Detroit"})
		
		@controller.link_ad_to_newspaper(first_ad, newspaper)
		@controller.link_ad_to_newspaper(second_ad, newspaper)
		@controller.list_newspapers.first.ads.should == [first_ad, second_ad]
	end

	it "should add one ad to two  newspaper" do
		ad = Advertisement.create({:name => "Butter deal", :description => "Get 2 1lb Acme salted or unsalted butter for $5"})
		first_newspaper = Newspaper.create({:name => "Detroit Free Press", :city => "Detroit"})
	   	second_newspaper = Newspaper.create({:name => "The Plain Dealer", :city => "Cleveland"})	
		
		@controller.link_ad_to_newspaper(ad,first_newspaper)
		@controller.link_ad_to_newspaper(ad, second_newspaper)
		
		@controller.list_newspapers.first.ads.should == [ad]
		@controller.list_newspapers[1].ads.should == [ad]
	end

	it "should associate an ad to a newspaper and a newspaper to an ad" do
		ad = Advertisement.create({:name => "Butter deal", :description => "Get 2 1lb Acme salted or unsalted butter for $5"})
		newspaper = Newspaper.create({:name => "Detroit Free Press", :city => "Detroit"})
		
		@controller.link_ad_to_newspaper(ad,newspaper)
		
		@controller.list_newspapers.first.ads.should == [ad]
		@controller.list_advertisements.first.newspapers.should == [newspaper]
	end









end
