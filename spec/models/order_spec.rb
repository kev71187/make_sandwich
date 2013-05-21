require 'spec_helper'

describe Order do

  before { @order = FactoryGirl.create(:order) }

  subject { @order }

  it { should respond_to(:user_id) }
  it { should respond_to(:cost) }
  it { should have_many(:contents)}
end