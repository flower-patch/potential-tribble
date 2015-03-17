require 'test_helper'

class ProjectTemplatesControllerTest < ActionController::TestCase
  test "should get choose_project" do
    get :choose_project
    assert_response :success
  end

end
