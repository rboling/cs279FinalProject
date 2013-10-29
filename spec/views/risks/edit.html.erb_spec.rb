require 'spec_helper'

describe "risks/edit" do
  before(:each) do
    @risk = assign(:risk, stub_model(Risk,
      :name => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit risk form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", risk_path(@risk), "post" do
      assert_select "input#risk_name[name=?]", "risk[name]"
      assert_select "textarea#risk_body[name=?]", "risk[body]"
    end
  end
end
