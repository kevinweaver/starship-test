require 'rails_helper'

RSpec.describe "occupations/new", type: :view do
  before(:each) do
    assign(:occupation, Occupation.new(
      :type => "",
      :start_date => "MyString",
      :end_date => "MyString"
    ))
  end

  it "renders new occupation form" do
    render

    assert_select "form[action=?][method=?]", occupations_path, "post" do

      assert_select "input[name=?]", "occupation[type]"

      assert_select "input[name=?]", "occupation[start_date]"

      assert_select "input[name=?]", "occupation[end_date]"
    end
  end
end
