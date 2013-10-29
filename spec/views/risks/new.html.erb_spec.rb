require 'spec_helper'

describe "risks/new" do
  before(:each) do
    assign(:risk, stub_model(Risk,
      :name => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new risk form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", risks_path, "post" do
      assert_select "input#risk_name[name=?]", "risk[name]"
      assert_select "textarea#risk_body[name=?]", "risk[body]"
    end
  end
end
