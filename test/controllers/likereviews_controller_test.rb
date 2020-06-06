require 'test_helper'

class LikereviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get likereviews_create_url
    assert_response :success
  end

  test "should get destroy" do
    get likereviews_destroy_url
    assert_response :success
  end

end
