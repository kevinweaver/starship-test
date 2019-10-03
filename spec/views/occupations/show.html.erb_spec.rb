require 'rails_helper'

RSpec.describe "occupations/show", type: :view do
  before(:each) do
    @occupation = assign(:occupation, Occupation.create!(
      :type => "Type",
      :start_date => "Start Date",
      :end_date => "End Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Start Date/)
    expect(rendered).to match(/End Date/)
  end
end
