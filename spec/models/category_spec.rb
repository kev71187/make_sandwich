require 'spec_helper'

describe Category do

  before { @category = FactoryGirl.create(:category)}

  subject { @category }

  it { should respond_to(:name) }
  it { should respond_to(:required) }
  it { should have_many(:ingredients)}
end