require 'rails_helper'

RSpec.describe "personnels/index", type: :view do
  before(:each) do
    assign(:personnels, [
      Personnel.create!(
        :name => "Name",
        :gender => "Gender",
        :species => "Species",
        :affiliation => "Affiliation",
        :string => "String"
      ),
      Personnel.create!(
        :name => "Name",
        :gender => "Gender",
        :species => "Species",
        :affiliation => "Affiliation",
        :string => "String"
      )
    ])
  end

  it "renders a list of personnels" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Species".to_s, :count => 2
    assert_select "tr>td", :text => "Affiliation".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
  end
end
