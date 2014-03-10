require 'spec_helper'

describe Player do
	#
	before do
		let(:player) {FactoryGirl.create(:player)}
		@player = Player.new(first_name: player.first_name, last_name: player.last_name, email: player.email, username: player.username)
	end

	it {should respond_to(:first_name)}
	it {should respond_to(:last_name)}
	it {should respond_to(:username)}
	it {should respond_to(:email)}
 	it {should be_valid} 
	
	it "does not have a first name" do
		before {@player.first_name = " "}
		it {should_not_be_valid}
	end
	it "does not have a last name"
		before {@player.last_name = " "}
		it {should_not_be_valid}
	end
	it "does not have a username"
		before {@player.username = " "}
		it {should_not_be_valid}
	end
	it "does not have an email address"
		before {@player.email = " "}
		it {should_not_be_valid}
	end
  
end
