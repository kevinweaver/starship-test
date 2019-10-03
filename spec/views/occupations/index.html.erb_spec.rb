require 'rails_helper'

RSpec.describe "occupations/index", type: :view do
  before(:each) do
    assign(:occupations, [
      Occupation.create!(
        :type => "Type",
        :start_date => "Start Date",
        :end_date => "End Date"
      ),
      Occupation.create!(
        :type => "Type",
        :start_date => "Start Date",
        :end_date => "End Date"
      )
    ])
  end

  it "renders a list of occupations" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Start Date".to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
  end
end
