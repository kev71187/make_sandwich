require 'spec_helper'

describe Ingredient do
  before do
  	@ingredient = FactoryGirl.create(:ingredient)
  end

  subject { @ingredient }

  it { should respond_to(:category_id) }
  it { should respond_to(:name) }
  it { should have_many(:orders)}
end