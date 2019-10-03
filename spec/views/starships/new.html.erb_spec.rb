require 'rails_helper'

RSpec.describe "starships/new", type: :view do
  before(:each) do
    assign(:starship, Starship.new(
      :name => "MyString",
      :class_name => "MyString",
      :registry => "MyString"
    ))
  end

  it "renders new starship form" do
    render

    assert_select "form[action=?][method=?]", starships_path, "post" do

      assert_select "input[name=?]", "starship[name]"

      assert_select "input[name=?]", "starship[class_name]"

      assert_select "input[name=?]", "starship[registry]"
    end
  end
end
