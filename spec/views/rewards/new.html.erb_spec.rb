require 'spec_helper'

describe "rewards/new" do
  before(:each) do
    assign(:reward, stub_model(Reward,
      :name => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new reward form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rewards_path, "post" do
      assert_select "input#reward_name[name=?]", "reward[name]"
      assert_select "textarea#reward_body[name=?]", "reward[body]"
    end
  end
end
