require 'spec_helper'
describe "Orders page" do
  subject { page } 

	before(:each) {login FactoryGirl.create(:user) }
	describe "New Order" do
  	before(:each) do  	
    	visit new_order_path 
 		end

	 	it { should have_button "Create Order"}
	end
	describe "New Order" do
  	before(:each) do
    	visit orders_path 
 		end

	 	it { should have_link "New Order"}
	end
end