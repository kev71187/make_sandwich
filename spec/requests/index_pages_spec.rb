require 'spec_helper'
describe "Home page" do
  subject { page } 

  describe "First visit" do
  	 before {visit root_path}

	  it { should have_link "Login" }
	  it { should have_link "Register" }
	end

	describe "Logged in" do
  	before(:each) do
    	login FactoryGirl.create(:user)
    	visit root_path 
 		end

	 	it { should have_link "Logout"}
	  it { should have_link "My Orders" }
	end
end