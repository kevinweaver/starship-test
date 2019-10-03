require 'rails_helper'

RSpec.describe "ranks/new", type: :view do
  before(:each) do
    assign(:rank, Rank.new(
      :type => "",
      :start_date => "MyString",
      :end_date => "MyString"
    ))
  end

  it "renders new rank form" do
    render

    assert_select "form[action=?][method=?]", ranks_path, "post" do

      assert_select "input[name=?]", "rank[type]"

      assert_select "input[name=?]", "rank[start_date]"

      assert_select "input[name=?]", "rank[end_date]"
    end
  end
end
