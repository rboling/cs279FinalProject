require 'spec_helper'

describe "responses/new" do
  before(:each) do
    assign(:response, stub_model(Response,
      :before_information => 1,
      :before_leaning => 1,
      :after_information => 1,
      :after_leaning => 1
    ).as_new_record)
  end

  it "renders new response form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", responses_path, "post" do
      assert_select "input#response_before_information[name=?]", "response[before_information]"
      assert_select "input#response_before_leaning[name=?]", "response[before_leaning]"
      assert_select "input#response_after_information[name=?]", "response[after_information]"
      assert_select "input#response_after_leaning[name=?]", "response[after_leaning]"
    end
  end
end
