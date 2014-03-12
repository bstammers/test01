require 'spec_helper'

describe PlayersController do
  describe "GET #index" do
    it "should display the all player view" do
      response.should render_template(:index)
    end
    it "should contain an array of players" do
      tmpplay = FactoryGirl.build(:player)
      get :index
      assigns(:players).should eq([tmpplay])
    end
  end
  describe "GET #new" do
    it "should display the registration form" do
      response.should render_template("new")
    end
  end
  describe "GET #show" do
    it "should display the player dashboard" do
      expect(response).to render_template("show")
    end
  end

end
