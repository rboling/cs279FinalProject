require 'spec_helper'

describe "sides/index" do
  before(:each) do
    assign(:sides, [
      stub_model(Side,
        :condition => nil,
        :body => "MyText",
        :summary => "Summary"
      ),
      stub_model(Side,
        :condition => nil,
        :body => "MyText",
        :summary => "Summary"
      )
    ])
  end

  it "renders a list of sides" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
  end
end
