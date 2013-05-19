require 'spec_helper'

describe Content do

  before { @content = FactoryGirl.create(:content) }

  subject { @content }

  it { should respond_to(:order_id) }
  it { should respond_to(:ingredient_id) }
end