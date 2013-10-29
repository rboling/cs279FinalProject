require 'spec_helper'

describe "rewards/edit" do
  before(:each) do
    @reward = assign(:reward, stub_model(Reward,
      :name => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit reward form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reward_path(@reward), "post" do
      assert_select "input#reward_name[name=?]", "reward[name]"
      assert_select "textarea#reward_body[name=?]", "reward[body]"
    end
  end
end
