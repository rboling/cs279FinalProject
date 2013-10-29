require 'spec_helper'

describe "risks/show" do
  before(:each) do
    @risk = assign(:risk, stub_model(Risk,
      :name => "Name",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
