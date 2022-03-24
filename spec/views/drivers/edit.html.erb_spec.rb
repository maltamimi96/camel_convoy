require 'rails_helper'

RSpec.describe "drivers/edit", type: :view do
  before(:each) do
    @driver = assign(:driver, Driver.create!(
      user: nil,
      vehicle_type: "MyString",
      insurance: "MyString"
    ))
  end

  it "renders the edit driver form" do
    render

    assert_select "form[action=?][method=?]", driver_path(@driver), "post" do

      assert_select "input[name=?]", "driver[user_id]"

      assert_select "input[name=?]", "driver[vehicle_type]"

      assert_select "input[name=?]", "driver[insurance]"
    end
  end
end
