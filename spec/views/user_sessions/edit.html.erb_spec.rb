require 'spec_helper'

describe "user_sessions/edit" do
  before(:each) do
    @user_session = assign(:user_session, stub_model(UserSession))
  end

  it "renders the edit user_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_session_path(@user_session), "post" do
    end
  end
end
