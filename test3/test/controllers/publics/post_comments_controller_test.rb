require 'test_helper'

class Publics::PostCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get publics_post_comments_create_url
    assert_response :success
  end

end
