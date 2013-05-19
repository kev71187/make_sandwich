require 'spec_helper'
describe "User page" do
  subject { page } 

	before(:each) { }
	describe "New User" do
  	before(:each) do  	
    	visit login_path 
 		end

	 	it { should have_button "Sign In"}
	end
	describe "New Order" do
  	before(:each) do
    	visit register_path 
 		end

	 	it { should have_button "Create User"}

	end
end