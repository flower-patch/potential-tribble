require 'test_helper'

class QuiltsControllerTest < ActionController::TestCase
  setup do
    @quilt = quilts(:one)
  end

  test "should get welcome" do
    get :welcome
    assert_response :success
    assert_not_nil assigns(:quilts)
  end

  test "should get choose_block" do
    get :choose_block, {project_id: project_templates(:one).id}
    assert_response :success
  end

  test "should get edit_project" do
    get :edit_project, {quilt_id: @quilt.id}
    assert_response :success
  end

  test "should get preview_project" do
    get :preview_project, {quilt_id: @quilt.id}
    assert_response :success
  end

  test "should get next_steps" do
    get :next_steps, {quilt_id: @quilt.id, quilt: {name: "test"}}
    assert_response :success
  end

  # lalala
  #
  #
  #
  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:developers)
  # end
  #
  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end
  #
  # test "should create developer" do
  #   assert_difference('Developer.count') do
  #     post :create, developer: { name: "Johnny Justice", email: "johnny@dev.com", password: "password"}
  #   end
  #   assert_redirected_to developers_path
  # end
  #

  # test "should update developer" do
  #   patch :update, id: @developer, developer: { name: "John B. Justice", email: "johnny@dev.com", password: "password"}
  #   assert_redirected_to developers_path
  # end
  #
  # test "should destroy developer" do
  #   assert_difference('Developer.count', -1) do
  #     delete :destroy, id: @developer
  #   end
  #   assert_redirected_to developers_path
  # end

end
