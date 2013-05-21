require 'spec_helper'

describe "sandwiches/new" do
  before(:each) do
    assign(:sandwich, stub_model(Sandwich,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new sandwich form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sandwiches_path, "post" do
      assert_select "input#sandwich_title[name=?]", "sandwich[title]"
    end
  end
end
