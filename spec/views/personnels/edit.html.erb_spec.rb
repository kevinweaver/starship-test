require 'rails_helper'

RSpec.describe "personnels/edit", type: :view do
  before(:each) do
    @personnel = assign(:personnel, Personnel.create!(
      :name => "MyString",
      :gender => "MyString",
      :species => "MyString",
      :affiliation => "MyString",
      :string => "MyString"
    ))
  end

  it "renders the edit personnel form" do
    render

    assert_select "form[action=?][method=?]", personnel_path(@personnel), "post" do

      assert_select "input[name=?]", "personnel[name]"

      assert_select "input[name=?]", "personnel[gender]"

      assert_select "input[name=?]", "personnel[species]"

      assert_select "input[name=?]", "personnel[affiliation]"

      assert_select "input[name=?]", "personnel[string]"
    end
  end
end
