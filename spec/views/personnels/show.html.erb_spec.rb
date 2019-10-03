require 'rails_helper'

RSpec.describe "personnels/show", type: :view do
  before(:each) do
    @personnel = assign(:personnel, Personnel.create!(
      :name => "Name",
      :gender => "Gender",
      :species => "Species",
      :affiliation => "Affiliation",
      :string => "String"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Species/)
    expect(rendered).to match(/Affiliation/)
    expect(rendered).to match(/String/)
  end
end
