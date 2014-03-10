require 'spec_helper'

describe Player do

	before do
		@player = FactoryGirl.build(:player)
	end

	subject {@player}

	it {should respond_to(:first_name)}
	it {should respond_to(:last_name)}
	it {should respond_to(:username)}
	it {should respond_to(:email)}
	it {should respond_to(:password_digest)}
	it {should be_valid}

	it "is invalid without a first name" do
		@player.first_name = nil
		@player.should_not be_valid
	#	FactoryGirl.build(:player, first_name: nil).should_not be_valid
	end
	it "is invalid without a last name" do
    @player.last_name = nil
    @player.should_not be_valid
#		FactoryGirl.build(:player, last_name: nil).should_not be_valid
	end
	it "is invalid without a username" do
    @player.username = nil
    @player.should_not be_valid
#		FactoryGirl.build(:player, username: nil).should_not be_valid
	end
	it "is invalid without an email address" do
    @player.email = nil
    @player.should_not be_valid
#		FactoryGirl.build(:player, email: nil).should_not be_valid
	end
#	it "is invalid with a previously used username" do
#		tmp_play = FactoryGirl.create(:player, username: "test01")
#		FactoryGirl.build(:player2, username: @player.username).should_not be_valid
#	end
#	it "is invalid with a previously used email address" do
 #     tmp01 = FactoryGirl.create(:player)
 #    FactoryGirl.new(:tmp02, player: tmp01)
 #     FactoryGirl.build(:tmp02, player: tmp01).should_not be_valid
#end

	describe "password validation" do
		it "is invalid with a blank password" do
			@player.password = " "
			@player.password_confirmation = " "
			@player.should_not be_valid
		end
		it "is valid with a confirmed password" do
			@player.password = "password"
			@player.password_confirmation = "password"
			@player.should be_valid
		end
		it "is invalid with a mismatched password" do
			@player.password = "password"
			@player.password_confirmation = "mismatch"
			@player.should_not be_valid
		end
	end
#	it "is invalid without a password" do
#		FactoryGirl.build(:player, password: " ", password_confirmation: " ").should_not be_valid
#	end
#	it "is invalid when the password does not match the confirmation" do
#		FactoryGirl.build(:player, password: "abcde", password_confirmation: "zxywv").should_not be_valid
#	end
end