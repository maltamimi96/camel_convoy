require "application_system_test_case"

class JobOffersTest < ApplicationSystemTestCase
  setup do
    @job_offer = job_offers(:one)
  end

  test "visiting the index" do
    visit job_offers_url
    assert_selector "h1", text: "Job Offers"
  end

  test "creating a Job offer" do
    visit job_offers_url
    click_on "New Job Offer"

    fill_in "Duration", with: @job_offer.duration
    fill_in "Num packages", with: @job_offer.num_packages
    fill_in "Title", with: @job_offer.title
    click_on "Create Job offer"

    assert_text "Job offer was successfully created"
    click_on "Back"
  end

  test "updating a Job offer" do
    visit job_offers_url
    click_on "Edit", match: :first

    fill_in "Duration", with: @job_offer.duration
    fill_in "Num packages", with: @job_offer.num_packages
    fill_in "Title", with: @job_offer.title
    click_on "Update Job offer"

    assert_text "Job offer was successfully updated"
    click_on "Back"
  end

  test "destroying a Job offer" do
    visit job_offers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job offer was successfully destroyed"
  end
end
