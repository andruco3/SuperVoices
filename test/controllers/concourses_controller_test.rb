require 'test_helper'

class ConcoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get concourses_new_url
    assert_response :success
  end

end
