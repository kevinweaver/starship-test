require 'rails_helper'

RSpec.describe "personnels/new", type: :view do
  before(:each) do
    assign(:personnel, Personnel.new(
      :name => "MyString",
      :gender => "MyString",
      :species => "MyString",
      :affiliation => "MyString",
      :string => "MyString"
    ))
  end

  it "renders new personnel form" do
    render

    assert_select "form[action=?][method=?]", personnels_path, "post" do

      assert_select "input[name=?]", "personnel[name]"

      assert_select "input[name=?]", "personnel[gender]"

      assert_select "input[name=?]", "personnel[species]"

      assert_select "input[name=?]", "personnel[affiliation]"

      assert_select "input[name=?]", "personnel[string]"
    end
  end
end
