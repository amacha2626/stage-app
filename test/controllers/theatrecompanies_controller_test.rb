require 'test_helper'

class TheatrecompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get theatrecompanies_new_url
    assert_response :success
  end

end
