require 'test_helper'

class Publics::RelationshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get publics_relationships_create_url
    assert_response :success
  end

  test "should get destroy" do
    get publics_relationships_destroy_url
    assert_response :success
  end

end
