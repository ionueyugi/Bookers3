require 'test_helper'

class Publics::EvaluationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get publics_evaluations_show_url
    assert_response :success
  end

  test "should get create" do
    get publics_evaluations_create_url
    assert_response :success
  end

  test "should get update" do
    get publics_evaluations_update_url
    assert_response :success
  end

end
