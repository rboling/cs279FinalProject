require 'spec_helper'

describe "opinions/index" do
  before(:each) do
    assign(:opinions, [
      stub_model(Opinion,
        :name => "Name",
        :condition => nil
      ),
      stub_model(Opinion,
        :name => "Name",
        :condition => nil
      )
    ])
  end

  it "renders a list of opinions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
