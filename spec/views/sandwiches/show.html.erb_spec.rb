require 'spec_helper'

describe "sandwiches/show" do
  before(:each) do
    @sandwich = assign(:sandwich, stub_model(Sandwich,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
