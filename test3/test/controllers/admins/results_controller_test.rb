require 'test_helper'

class Admins::ResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_results_index_url
    assert_response :success
  end

  test "should get update" do
    get admins_results_update_url
    assert_response :success
  end

end
