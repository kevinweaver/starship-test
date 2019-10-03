require 'rails_helper'

RSpec.describe "ranks/index", type: :view do
  before(:each) do
    assign(:ranks, [
      Rank.create!(
        :type => "Type",
        :start_date => "Start Date",
        :end_date => "End Date"
      ),
      Rank.create!(
        :type => "Type",
        :start_date => "Start Date",
        :end_date => "End Date"
      )
    ])
  end

  it "renders a list of ranks" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Start Date".to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
  end
end
