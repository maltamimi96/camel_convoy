require "test_helper"

class JobOffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_offer = job_offers(:one)
  end

  test "should get index" do
    get job_offers_url
    assert_response :success
  end

  test "should get new" do
    get new_job_offer_url
    assert_response :success
  end

  test "should create job_offer" do
    assert_difference('JobOffer.count') do
      post job_offers_url, params: { job_offer: { duration: @job_offer.duration, num_packages: @job_offer.num_packages, title: @job_offer.title } }
    end

    assert_redirected_to job_offer_url(JobOffer.last)
  end

  test "should show job_offer" do
    get job_offer_url(@job_offer)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_offer_url(@job_offer)
    assert_response :success
  end

  test "should update job_offer" do
    patch job_offer_url(@job_offer), params: { job_offer: { duration: @job_offer.duration, num_packages: @job_offer.num_packages, title: @job_offer.title } }
    assert_redirected_to job_offer_url(@job_offer)
  end

  test "should destroy job_offer" do
    assert_difference('JobOffer.count', -1) do
      delete job_offer_url(@job_offer)
    end

    assert_redirected_to job_offers_url
  end
end
