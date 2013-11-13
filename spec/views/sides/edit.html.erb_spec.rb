require 'spec_helper'

describe "sides/edit" do
  before(:each) do
    @side = assign(:side, stub_model(Side,
      :condition => nil,
      :body => "MyText",
      :summary => "MyString"
    ))
  end

  it "renders the edit side form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", side_path(@side), "post" do
      assert_select "input#side_condition[name=?]", "side[condition]"
      assert_select "textarea#side_body[name=?]", "side[body]"
      assert_select "input#side_summary[name=?]", "side[summary]"
    end
  end
end
