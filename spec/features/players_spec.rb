require 'spec_helper'

describe "Players" do

#  describe "GET /players" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get players_path
#      response.status.should be(200)
#    end
#  end


  describe "register" do
  	before {visit register_path}

  	let(:submit ) {"Create my account"}

  	describe "with invalid information" do
  		it "should not create a player" do
  			expect {click_button submit}.not_to change(Player, :count)
  		end
  	end
  	describe "with valid information" do
  		before do
  			fill_in "First Name", with: "Joe"
  			fill_in "Last Name", with: "Bloggs"
  			fill_in "Username", with: "jbloggs"
  			fill_in "Email", with: "joe.bloggs@test.com"
  			fill_in "Password", with: "pass"
  			fill_in "Confirmation", with: "pass"
  		end
  		it "should create a player" do
  			expect {click_button submit}.to change(Player, :count).by(1)
  		end
  	end
  end
end
