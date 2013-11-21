require 'spec_helper'

describe "responses/index" do
  before(:each) do
    assign(:responses, [
      stub_model(Response,
        :before_information => 1,
        :before_leaning => 2,
        :after_information => 3,
        :after_leaning => 4
      ),
      stub_model(Response,
        :before_information => 1,
        :before_leaning => 2,
        :after_information => 3,
        :after_leaning => 4
      )
    ])
  end

  it "renders a list of responses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
