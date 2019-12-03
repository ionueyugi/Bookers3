require 'test_helper'

class Publics::SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get publics_schedules_index_url
    assert_response :success
  end

  test "should get create" do
    get publics_schedules_create_url
    assert_response :success
  end

end
