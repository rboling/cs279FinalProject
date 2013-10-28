require 'spec_helper'

describe "conditions/index" do
  before(:each) do
    assign(:conditions, [
      stub_model(Condition,
        :name => "Name"
      ),
      stub_model(Condition,
        :name => "Name"
      )
    ])
  end

  it "renders a list of conditions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
