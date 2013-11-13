require 'spec_helper'

describe "sides/show" do
  before(:each) do
    @side = assign(:side, stub_model(Side,
      :condition => nil,
      :body => "MyText",
      :summary => "Summary"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/Summary/)
  end
end
