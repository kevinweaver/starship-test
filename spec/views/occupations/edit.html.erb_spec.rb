require 'rails_helper'

RSpec.describe "occupations/edit", type: :view do
  before(:each) do
    @occupation = assign(:occupation, Occupation.create!(
      :type => "",
      :start_date => "MyString",
      :end_date => "MyString"
    ))
  end

  it "renders the edit occupation form" do
    render

    assert_select "form[action=?][method=?]", occupation_path(@occupation), "post" do

      assert_select "input[name=?]", "occupation[type]"

      assert_select "input[name=?]", "occupation[start_date]"

      assert_select "input[name=?]", "occupation[end_date]"
    end
  end
end
