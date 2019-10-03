require 'rails_helper'

RSpec.describe "ranks/show", type: :view do
  before(:each) do
    @rank = assign(:rank, Rank.create!(
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
