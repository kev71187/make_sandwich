require 'spec_helper'

describe "sandwiches/index" do
  before(:each) do
    assign(:sandwiches, [
      stub_model(Sandwich,
        :title => "Title"
      ),
      stub_model(Sandwich,
        :title => "Title"
      )
    ])
  end

  it "renders a list of sandwiches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
