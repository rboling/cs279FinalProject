require 'spec_helper'

describe "responses/edit" do
  before(:each) do
    @response = assign(:response, stub_model(Response,
      :before_information => 1,
      :before_leaning => 1,
      :after_information => 1,
      :after_leaning => 1
    ))
  end

  it "renders the edit response form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", response_path(@response), "post" do
      assert_select "input#response_before_information[name=?]", "response[before_information]"
      assert_select "input#response_before_leaning[name=?]", "response[before_leaning]"
      assert_select "input#response_after_information[name=?]", "response[after_information]"
      assert_select "input#response_after_leaning[name=?]", "response[after_leaning]"
    end
  end
end
