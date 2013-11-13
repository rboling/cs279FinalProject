require 'spec_helper'

describe "points/index" do
  before(:each) do
    assign(:points, [
      stub_model(Point,
        :condition => nil,
        :body => "MyText",
        :summary => "Summary"
      ),
      stub_model(Point,
        :condition => nil,
        :body => "MyText",
        :summary => "Summary"
      )
    ])
  end

  it "renders a list of points" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
  end
end
