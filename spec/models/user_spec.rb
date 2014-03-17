require 'spec_helper'

describe User do
  it "should have a unique email" do
  	user01 = FactoryGirl.create(:user)
  	user02 = user01.dup
  	user02.should_not be_valid
  end
end
