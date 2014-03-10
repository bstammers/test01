require 'faker'

FactoryGirl.define do
	factory :player do
		first_name	"Fred"
		last_name	"Smith"
		username	"fsmith"
		email		"fred.smith@test.com.au"
		mobile		"0455 555555"
		#password	"password"
		#password_confirmation	"password"
	end
	
end