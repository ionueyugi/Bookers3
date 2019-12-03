require 'test_helper'

class Publics::AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get publics_about_index_url
    assert_response :success
  end

end
