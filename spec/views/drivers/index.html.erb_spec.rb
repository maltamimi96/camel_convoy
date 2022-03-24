require 'rails_helper'

RSpec.describe "drivers/index", type: :view do
  before(:each) do
    assign(:drivers, [
      Driver.create!(
        user: nil,
        vehicle_type: "Vehicle Type",
        insurance: "Insurance"
      ),
      Driver.create!(
        user: nil,
        vehicle_type: "Vehicle Type",
        insurance: "Insurance"
      )
    ])
  end

  it "renders a list of drivers" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Vehicle Type".to_s, count: 2
    assert_select "tr>td", text: "Insurance".to_s, count: 2
  end
end
