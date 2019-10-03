require 'rails_helper'

RSpec.describe "starships/show", type: :view do
  before(:each) do
    @starship = assign(:starship, Starship.create!(
      :name => "Name",
      :class_name => "Class Name",
      :registry => "Registry"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Class Name/)
    expect(rendered).to match(/Registry/)
  end
end
