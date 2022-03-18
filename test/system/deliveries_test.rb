require "application_system_test_case"

class DeliveriesTest < ApplicationSystemTestCase
  setup do
    @delivery = deliveries(:one)
  end

  test "visiting the index" do
    visit deliveries_url
    assert_selector "h1", text: "Deliveries"
  end

  test "creating a Delivery" do
    visit deliveries_url
    click_on "New Delivery"

    fill_in "By", with: @delivery.by
    fill_in "Deliver", with: @delivery.deliver
    fill_in "Packages", with: @delivery.packages
    fill_in "Pay", with: @delivery.pay
    fill_in "Title", with: @delivery.title
    click_on "Create Delivery"

    assert_text "Delivery was successfully created"
    click_on "Back"
  end

  test "updating a Delivery" do
    visit deliveries_url
    click_on "Edit", match: :first

    fill_in "By", with: @delivery.by
    fill_in "Deliver", with: @delivery.deliver
    fill_in "Packages", with: @delivery.packages
    fill_in "Pay", with: @delivery.pay
    fill_in "Title", with: @delivery.title
    click_on "Update Delivery"

    assert_text "Delivery was successfully updated"
    click_on "Back"
  end

  test "destroying a Delivery" do
    visit deliveries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delivery was successfully destroyed"
  end
end
