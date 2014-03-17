require 'spec_helper'

describe PlayersController do

  subject {page}

  describe "GET #index" do
    it "should display the all player view" do
    #  response.should render_template(:index)
      get :index
      assert_response :success
     #assert_not_nil assigns(:players)
    end
    it "should contain an array of players" do
      #tmpplay = FactoryGirl.build(:player)
      #get :index
      #assigns(:players).should eq([tmpplay])
    end
  end
  describe "GET #new" do
    it "should display the registration form" do
      #response.should render_template("new")
      get :new
      assert_response :success
    end
  end
  describe "GET #show" do
    it "should display the player dashboard" do
      #expect(response).to render_template("show")
      play = FactoryGirl.create(:player)
      get :show(play.id)
      assert_response :success
    end
  end
#  describe "POST create" do
#     it {expect {post :create, player: FactoryGirl.attributes_for(:player)}.to change(Player, :count).by(1)}
#  end
end
