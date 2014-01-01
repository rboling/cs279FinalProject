require 'spec_helper'

describe "opinions/edit" do
  before(:each) do
    @opinion = assign(:opinion, stub_model(Opinion,
      :name => "MyString",
      :condition => nil
    ))
  end

  it "renders the edit opinion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", opinion_path(@opinion), "post" do
      assert_select "input#opinion_name[name=?]", "opinion[name]"
      assert_select "input#opinion_condition[name=?]", "opinion[condition]"
    end
  end
end
