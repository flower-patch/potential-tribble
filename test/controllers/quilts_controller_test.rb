require 'test_helper'

class QuiltsControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get edit_project" do
    get :edit_project
    assert_response :success
  end

  test "should get preview_project" do
    get :preview_project
    assert_response :success
  end

  test "should get next_steps" do
    get :next_steps
    assert_response :success
  end

end
