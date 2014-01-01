require 'spec_helper'

describe "opinions/new" do
  before(:each) do
    assign(:opinion, stub_model(Opinion,
      :name => "MyString",
      :condition => nil
    ).as_new_record)
  end

  it "renders new opinion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", opinions_path, "post" do
      assert_select "input#opinion_name[name=?]", "opinion[name]"
      assert_select "input#opinion_condition[name=?]", "opinion[condition]"
    end
  end
end
