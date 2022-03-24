require 'rails_helper'

RSpec.describe "drivers/show", type: :view do
  before(:each) do
    @driver = assign(:driver, Driver.create!(
      user: nil,
      vehicle_type: "Vehicle Type",
      insurance: "Insurance"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Vehicle Type/)
    expect(rendered).to match(/Insurance/)
  end
end
