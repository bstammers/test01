require 'spec_helper'

describe "AuthenticationPages" do
#  describe "GET /authentication_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get authentication_pages_index_path
#      response.status.should be(200)
#    end
#  end

	subject {page}

	describe "signin page" do
		before {visit signin_path}

		it {should have_content('Sign in')}
		it {should have_title('Sign in')}
	#	get :new
	#	assert_response :success
	end

	describe "signin" do
		before {visit signin_path}

		describe "with invalid information" do
			it {should have_title('Sign in')}
			it {should have_selector('div.alert.alert-error')}
		end
		describe "with valid information" do
			play = FactoryGirl.create(:player)
			before do
				fill_in "Email", with: player.email
				fill_in "Password", with: player.password
				click_button "Sign in"
			end
			it {should have_title(player.username)}
			it {should have_link('Profile', href: player_path(player))}
			it {should have_link('Sign out', href: signout_path)}
			it {should_not have_link('Sign in', href: signin_path)}
		end
	end
end
