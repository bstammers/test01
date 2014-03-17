require 'spec_helper'

describe Player do

	before do
		@player01 = FactoryGirl.create(:player)
	end

  	it "should be invalid if the email address already exists" do
  		player02 = @player01.dup
  		player02.username = "Tom Smith"
  		player02.should_not be_valid
  	end
  	it "should be invalid if the username already exists" do
  		player03 = @player01.dup
  		player03.email = "tom.smith@test.com"
  		player03.should_not be_valid
  	end
  	it "should be invalid if there is no first name" do
  		@player01.firstname = nil
  		@player01.should_not be_valid
  	end
  	it "should be invalid if there is no last name" do
  		@player01.lastname = nil
  		@player01.should_not be_valid
  	end
  	it "should be invalid if there is no username" do
  		@player01.username = nil
  		@player01.should_not be_valid
  	end
  	it "should be invalid if there is no email address" do
  		@player01.email = nil
  		@player01.should_not be_valid
  	end
end
