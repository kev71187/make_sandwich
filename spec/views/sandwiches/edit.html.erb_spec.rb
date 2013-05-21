require 'spec_helper'

describe "sandwiches/edit" do
  before(:each) do
    @sandwich = assign(:sandwich, stub_model(Sandwich,
      :title => "MyString"
    ))
  end

  it "renders the edit sandwich form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sandwich_path(@sandwich), "post" do
      assert_select "input#sandwich_title[name=?]", "sandwich[title]"
    end
  end
end
