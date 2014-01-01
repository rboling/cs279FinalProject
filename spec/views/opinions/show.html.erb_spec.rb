require 'spec_helper'

describe "opinions/show" do
  before(:each) do
    @opinion = assign(:opinion, stub_model(Opinion,
      :name => "Name",
      :condition => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
  end
end
