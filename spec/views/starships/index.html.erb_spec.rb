require 'rails_helper'

RSpec.describe "starships/index", type: :view do
  before(:each) do
    assign(:starships, [
      Starship.create!(
        :name => "Name",
        :class_name => "Class Name",
        :registry => "Registry"
      ),
      Starship.create!(
        :name => "Name",
        :class_name => "Class Name",
        :registry => "Registry"
      )
    ])
  end

  it "renders a list of starships" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Class Name".to_s, :count => 2
    assert_select "tr>td", :text => "Registry".to_s, :count => 2
  end
end
