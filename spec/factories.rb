FactoryGirl.define do
	factory :user do
		email "test1@test.com"
		password "test"
		password_confirmation "test"
	end

	factory :sandwich do
		title 'Vegan' 
	end

	factory :order do
		user_id 1
		sandwich_id 1
	end
end