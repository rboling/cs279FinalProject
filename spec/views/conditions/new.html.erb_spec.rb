require 'spec_helper'

describe "conditions/new" do
  before(:each) do
    assign(:condition, stub_model(Condition,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new condition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", conditions_path, "post" do
      assert_select "input#condition_name[name=?]", "condition[name]"
    end
  end
end
