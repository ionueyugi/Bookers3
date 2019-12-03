require 'test_helper'

class Publics::RewardsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get publics_rewards_create_url
    assert_response :success
  end

end
