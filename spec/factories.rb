FactoryGirl.define do
	factory :user do
		email "test1@test.com"
		password "test"
		password_confirmation "test"
	end

	factory :category do
		required 1
		name 'Bread'
	end

	factory :ingredient do
		category_id 1
		name 'Wheat' 
	end

	factory :content do
		order_id 1
		ingredient_id 1
	end

	factory :order do
		user_id 1
		cost 2
	end
end