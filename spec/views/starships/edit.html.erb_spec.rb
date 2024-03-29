require 'rails_helper'

RSpec.describe "starships/edit", type: :view do
  before(:each) do
    @starship = assign(:starship, Starship.create!(
      :name => "MyString",
      :class_name => "MyString",
      :registry => "MyString"
    ))
  end

  it "renders the edit starship form" do
    render

    assert_select "form[action=?][method=?]", starship_path(@starship), "post" do

      assert_select "input[name=?]", "starship[name]"

      assert_select "input[name=?]", "starship[class_name]"

      assert_select "input[name=?]", "starship[registry]"
    end
  end
end
