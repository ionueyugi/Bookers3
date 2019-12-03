require 'test_helper'

class SampleApp2ControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test"should get home"do
  	get statitic_pages_home_url
  	assert_response :success
  end
end
