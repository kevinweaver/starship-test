require 'rails_helper'

RSpec.describe "ranks/edit", type: :view do
  before(:each) do
    @rank = assign(:rank, Rank.create!(
      :type => "",
      :start_date => "MyString",
      :end_date => "MyString"
    ))
  end

  it "renders the edit rank form" do
    render

    assert_select "form[action=?][method=?]", rank_path(@rank), "post" do

      assert_select "input[name=?]", "rank[type]"

      assert_select "input[name=?]", "rank[start_date]"

      assert_select "input[name=?]", "rank[end_date]"
    end
  end
end
