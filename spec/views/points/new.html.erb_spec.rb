require 'spec_helper'

describe "points/new" do
  before(:each) do
    assign(:point, stub_model(Point,
      :condition => nil,
      :body => "MyText",
      :summary => "MyString"
    ).as_new_record)
  end

  it "renders new point form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", points_path, "post" do
      assert_select "input#point_condition[name=?]", "point[condition]"
      assert_select "textarea#point_body[name=?]", "point[body]"
      assert_select "input#point_summary[name=?]", "point[summary]"
    end
  end
end
