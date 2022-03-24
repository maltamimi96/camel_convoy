require 'rails_helper'

RSpec.describe "drivers/new", type: :view do
  before(:each) do
    assign(:driver, Driver.new(
      user: nil,
      vehicle_type: "MyString",
      insurance: "MyString"
    ))
  end

  it "renders new driver form" do
    render

    assert_select "form[action=?][method=?]", drivers_path, "post" do

      assert_select "input[name=?]", "driver[user_id]"

      assert_select "input[name=?]", "driver[vehicle_type]"

      assert_select "input[name=?]", "driver[insurance]"
    end
  end
end
